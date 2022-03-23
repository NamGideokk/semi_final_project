package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.Order;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.math.BigInteger;
import java.util.Date;

@Data
@AllArgsConstructor
@Builder
public class OrderSimpleForSellerDto {
    private BigInteger id;
    private BigInteger salesPageId;
    private Long consumerId;
    private String consumerName;
    private BigInteger salesProductId;
    private BigInteger productId;
    private String productName;
    private Integer productPrice;
    private Integer productDiscountRate;
    private Integer qty;
    private Integer orderState;
    private String imagePath;
    private Date regTime;

    public static OrderSimpleForSellerDto fromEntity(Order entity) {
        if (entity == null) {
            return null;
        }
        return builder()
                .id(entity.getId())
                .salesPageId(entity.getSalesPage() == null
                        ? null
                        : entity.getSalesPage().getId())
                .salesProductId(entity.getSalesProduct() == null
                        ? null
                        : entity.getSalesProduct().getId())
                .productId(entity.getProduct() == null
                        ? null
                        : entity.getProduct().getId())
                .consumerId(entity.getMemberConsumer() == null
                        ? null
                        : entity.getMemberConsumer().getId())
                .consumerName(entity.getMemberConsumer() == null
                        ? null
                        : entity.getMemberConsumer().getName())
                .productName(entity.getProductName())
                .productPrice(entity.getProductPrice())
                .productDiscountRate(entity.getProductDiscountRate())
                .qty(entity.getQty())
                .orderState(entity.getState().getCode())
                .imagePath(
                        entity.getSalesProduct() == null ||
                        entity.getSalesProduct().getProduct() == null ||
                        entity.getSalesProduct().getProduct().getImages() == null ||
                        entity.getSalesProduct().getProduct().getImages().isEmpty()
                                ? null
                                : "/public/upload/product/" + entity.getSalesProduct().getProduct().getId() +
                                    "/" + entity.getSalesProduct().getProduct().getImages().split(",")[0])
                .regTime(entity.getRegTime())
                .build();
    }

}
