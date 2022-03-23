package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.entity.Product;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

// 정보 조회 결과 전달용
@Data
@AllArgsConstructor
@Builder
public class ProductInfo {

    private BigInteger id;

    private Long sellerId;

    private String name;

    private List<String> images;

    private Integer category1;

    private Integer category2;

    private String additionalDesc;

    private Integer price;

    private Integer discountRate;

    private Integer stockCount;

    private Integer sellCount;

    private Double avgFeedbackPoint;

    private Integer feedbackCount;

    private Date regTime;

    private Date lastModTime;

    private Date denyTime;

    public static ProductInfo fromEntity(Product entity) {
        if (entity == null) {
            return null;
        }
        return builder()
                .id(entity.getId())
                .sellerId(entity.getSeller().getId())
                .name(entity.getName())
                .images(entity.getImages() == null || entity.getImages().isEmpty()
                        ? new ArrayList<>()
                        : Arrays.stream(entity.getImages().split(","))
                        .map(v -> {
                            return "/public/upload/product/" + entity.getId() + "/" + v;
                        }).collect(Collectors.toList()))
                .category1(entity.getCategory1())
                .category2(entity.getCategory2())
                .additionalDesc(entity.getAdditionalDesc())
                .price(entity.getPrice())
                .discountRate(entity.getDiscountRate())
                .stockCount(entity.getStockCount())
                .sellCount(entity.getSellCount())
                .avgFeedbackPoint(entity.getAvgFeedbackPoint())
                .feedbackCount(entity.getFeedbackCount())
                .regTime(entity.getRegTime())
                .lastModTime(entity.getLastModTime())
                .denyTime(entity.getDenyTime())
                .build();
    }
}
