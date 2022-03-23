package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.service;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.MemberType;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.ResourceType;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.BadRequestException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.ForbiddenException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.NotificationConsumerRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.NotificationConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.dto.ReviewReplyAddReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity.Review;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity.ReviewReply;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.repository.ReviewReplyRepository;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.repository.ReviewRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
@Transactional(readOnly = true)
public class ReviewReplyService {

    @Autowired private ReviewRepository reviewRepository;
    @Autowired private ReviewReplyRepository reviewReplyRepository;
    @Autowired private NotificationConsumerRepository notificationConsumerRepository;

    @Transactional
    //리뷰 답글 작성
    public void addReviewReply(Long sellerId, ReviewReplyAddReq reqData) {
        Optional<Review> findReview = reviewRepository.findById(reqData.getReviewId());
        if(findReview.isEmpty()) {
            throw new BadRequestException("답글의 대상인 리뷰글을 찾지 못 했습니다.");
        }
        Review review = findReview.get();
        if(!review.getMemberSeller().getId().equals(sellerId)) {
            throw new ForbiddenException("접근 권한이 없습니다.");
        }

        ReviewReply reply = ReviewReply.builder()
                .review(review)
                .memberSeller(review.getMemberSeller())
                .content(reqData.getContent())
                .build();
        reviewReplyRepository.save(reply);

        // 알림 발생
        if(review.getMemberConsumer() != null) {
            notificationConsumerRepository.save(
                    NotificationConsumer.builder()
                            .memberConsumer(review.getMemberConsumer())
                            .message(String.format("%s에 남긴 후기에 판매자가 답글을 남겼습니다.",
                                    review.getProductName()))
                            .targetType(ResourceType.REVIEW)
                            .targetId(review.getId())
                            .sourceType(MemberType.SELLER)
                            .sourceId(review.getMemberSeller().getId())
                            .build());
        }
    }
}
