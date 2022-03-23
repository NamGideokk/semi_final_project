package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto.ProductInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesProduct;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.math.BigInteger;

@Data
@AllArgsConstructor
@Builder
public class SalesProductSimpleInfo {

    private BigInteger id;

    private ProductInfo product;

    public static SalesProductSimpleInfo fromEntity(SalesProduct entity) {
        if(entity == null) {
            return null;
        }
        return builder()
                .id(entity.getId())
                .product(ProductInfo.fromEntity(entity.getProduct()))
                .build();
    }
}
