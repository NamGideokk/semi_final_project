package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto.MemberSellerInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesProduct;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.dto.ProductInfo;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.math.BigInteger;

@Data
@AllArgsConstructor
@Builder
public class SalesProductDetailInfo {

    private BigInteger id;

    private MemberSellerInfo sellerInfo;

    private SalesPageSimpleInfo salesPageInfo;

    private ProductInfo productInfo;

    public static SalesProductDetailInfo fromEntity(SalesProduct entity) {
        if (entity == null) {
            return null;
        }
        return builder()
                .id(entity.getId())
                .sellerInfo(MemberSellerInfo.fromEntity(entity.getMemberSeller()))
                .salesPageInfo(SalesPageSimpleInfo.fromEntity(entity.getSalesPage()))
                .productInfo(ProductInfo.fromEntity(entity.getProduct()))
                .build();
    }
}
