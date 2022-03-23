package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart.entity.Cart;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.dto.SalesProductDetailInfo;
import lombok.*;

import java.math.BigInteger;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CartDto {
    private BigInteger id;
    private SalesProductDetailInfo salesProductInfo;
    private int qty;

    public static CartDto fromEntity(Cart entity) {
        if (entity == null) {
            return null;
        }
        return builder()
                .id(entity.getId())
                .salesProductInfo(SalesProductDetailInfo.fromEntity(entity.getSalesProduct()))
                .qty(entity.getQty())
                .build();
    }
}
