package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.service;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.MemberType;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.OrderState;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.ResourceType;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.BadRequestException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.ForbiddenException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.NotificationSellerRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.NotificationSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.OrderRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.Order;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.entity.Product;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.dto.ReviewAddReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.dto.ReviewInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity.Review;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.repository.ReviewRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesPage;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.config.PickmeupProperties;
import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.Scanner;
import java.util.stream.Collectors;

@Service
@Transactional(readOnly = true)
public class ReviewService {
    @Autowired
    private ReviewRepository reviewRepository;

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private NotificationSellerRepository notificationSellerRepository;

    @Autowired
    private PickmeupProperties pickmeupProperties;

    @Transactional
    //리뷰추가
    public void addReview(Long consumerId, ReviewAddReq reqData) {
        Optional<Order> findOrder = orderRepository.findById(reqData.getOrderId());
        if(findOrder.isEmpty()) {
            throw new BadRequestException("해당 주문을 찾지 못 했습니다.");
        }
        Order order = findOrder.get();
        if(!order.getMemberConsumer().getId().equals(consumerId)) {
            throw new ForbiddenException("접근 권한이 없습니다.");
        }
        if(order.getSalesPage() == null) {
            throw new BadRequestException("판매자 계정이 탈퇴되어, 판매 페이지가 남아있지 않습니다.");
        }

        double reviewPoint = reqData.getReviewPoint();
        if (reviewPoint < 0 || reviewPoint > 5) {
            throw new BadRequestException("평점은 0에서 5 사이의 값이어야 합니다.");
        }

        if(order.getState() != OrderState.PRODUCT_RECEIVED) {
            throw new BadRequestException("후기를 작성할 수 없는 주문 상태입니다.");
        }

        if(reqData.getImages() != null && reqData.getImages().length > 5) {
            throw new RuntimeException("이미지의 수가 너무 많습니다.");
        }

        // 리뷰 점수 소수점 한자리까지만 정리
        BigDecimal newReviewPoint = new BigDecimal(Double.toString(reviewPoint));
        newReviewPoint = newReviewPoint.setScale(1, RoundingMode.HALF_UP);

        Review review = new Review(
                order.getMemberSeller(),
                order.getMemberConsumer(),
                order,
                order.getSalesPage(),
                order.getProductName(),
                reqData.getContent(),
                null,
                newReviewPoint.doubleValue());
        reviewRepository.save(review);

        order.setState(OrderState.ORDER_COMPLETE);

        // 리뷰 점수 정산
        Product product = order.getProduct();
        if(product != null) {
            Double newAvgPoint = computeNewAvgPoint(
                    product.getAvgFeedbackPoint(),
                    BigInteger.valueOf(product.getFeedbackCount()),
                    newReviewPoint);

            product.setAvgFeedbackPoint(newAvgPoint);
            product.setFeedbackCount(product.getFeedbackCount() + 1);
        }
        SalesPage salesPage = order.getSalesPage();
        if(salesPage != null) {
            Double newAvgPoint = computeNewAvgPoint(
                    salesPage.getAvgFeedbackPoint(),
                    salesPage.getTotalFeedbackCount(),
                    newReviewPoint);

            salesPage.setAvgFeedbackPoint(newAvgPoint);
            salesPage.setTotalFeedbackCount(salesPage.getTotalFeedbackCount().add(BigInteger.valueOf(1)));
        }
        MemberSeller seller = order.getMemberSeller();
        if(seller != null) {
            Double newAvgPoint = computeNewAvgPoint(
                    seller.getAvgFeedbackPoint(),
                    seller.getTotalFeedbackCount(),
                    newReviewPoint);

            seller.setAvgFeedbackPoint(newAvgPoint);
            seller.setTotalFeedbackCount(seller.getTotalFeedbackCount().add(BigInteger.valueOf(1)));

            // 알림 발생
            notificationSellerRepository.save(
                    NotificationSeller.builder()
                            .memberSeller(order.getMemberSeller())
                            .message(String.format("후기: %s님께서 %s의 후기를 남겼습니다.",
                                    order.getMemberConsumer().getName(),
                                    order.getProductName()))
                            .targetType(ResourceType.REVIEW)
                            .targetId(review.getId())
                            .sourceType(MemberType.CONSUMER)
                            .sourceId(order.getMemberConsumer().getId())
                            .build());
        }

        if(reqData.getImages() != null && reqData.getImages().length > 0) {
            String resourcesPath = pickmeupProperties.getUploadPath();
            File reviewUploadDir = new File(resourcesPath, "review");
            File eachReviewUploadDir = new File(reviewUploadDir, review.getId().toString());
            File indexFile = new File(eachReviewUploadDir, "index");

            int fileIdx = 1;
            if(!eachReviewUploadDir.exists()) {
                eachReviewUploadDir.mkdirs();
            } else if(indexFile.exists()) {
                try (Scanner scan = new Scanner(indexFile))  {
                    fileIdx = Integer.parseInt(scan.nextLine());
                } catch (Exception ignore) { }
            }

            List<File> images = new ArrayList<File>();
            try {
                for (MultipartFile multiPartFile: reqData.getImages()) {
                    // image 파일이 아닌경우 패스
                    if(!multiPartFile.getContentType().toLowerCase().startsWith("image/")) {
                        throw new Exception("잘못된 형식의 파일입니다.");
                    }
                    File uploadFile = new File(eachReviewUploadDir, Integer.toString(fileIdx++));
                    multiPartFile.transferTo(uploadFile);
                    images.add(uploadFile);
                }
                BufferedWriter writer = new BufferedWriter(new FileWriter(indexFile));
                writer.write(Integer.toString(fileIdx));
                writer.close();
                review.setImages(String.join(",",
                        images.stream().map(f -> f.getName()).collect(Collectors.toList())));

                reviewRepository.flush();
            } catch (Exception e) {
                try {
                    FileUtils.deleteDirectory(eachReviewUploadDir);
                } catch (IOException ignore) { }

                throw new RuntimeException(e); // 트랜젝션을 rollback 시키기 위함
            }
        }
    }

    @Transactional
    //조회기능 추가
    public List<ReviewInfo> searchReviewList(
            Pageable pageable,
            Long sellerId,
            Long writerId,
            BigInteger salesPageId
    ) {
        List<Review> reviewList = reviewRepository.findByQuery(sellerId, writerId, salesPageId, pageable);
        if(reviewList == null || reviewList.isEmpty()) {
            return new ArrayList<>();
        }
        return reviewList.stream().map(ReviewInfo::fromEntity).collect(Collectors.toList());
    }

    private static Double computeNewAvgPoint(Double oldAvgPoint, BigInteger oldReviewCount, BigDecimal newPoint) {
        if(oldAvgPoint == null) {
            return newPoint.doubleValue();
        }

        BigDecimal reviewCount = new BigDecimal(oldReviewCount);
        BigDecimal sumPoint = BigDecimal.valueOf(oldAvgPoint).multiply(reviewCount);
        sumPoint = sumPoint.add(newPoint);

        return sumPoint.divide(reviewCount.add(BigDecimal.ONE), 3, RoundingMode.HALF_UP).doubleValue();
    }
}
