package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto.MemberSellerInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesPage;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

// 정보 조회 결과 전달용
@Data
@AllArgsConstructor
@Builder
public class SalesPageDetailInfo {

    private BigInteger id;

    private String name;

    private String content;

    private Integer clickCount;

    private Date regTime;

    private Date lastModTime;

    private BigInteger totalSellCount;

    private Double avgFeedbackPoint;

    private BigInteger totalFeedbackCount;

    private MemberSellerInfo seller;

    private List<SalesProductSimpleInfo> salesProductList;

    public static SalesPageDetailInfo fromEntity(SalesPage entity) {
        if (entity == null) {
            return null;
        }
        return builder()
                .id(entity.getId())
                .name(entity.getName())
                .content(entity.getContent())
                .clickCount(entity.getClickCount())
                .regTime(entity.getRegTime())
                .lastModTime(entity.getLastModTime())
                .totalFeedbackCount(entity.getTotalFeedbackCount())
                .avgFeedbackPoint(entity.getAvgFeedbackPoint())
                .totalFeedbackCount(entity.getTotalFeedbackCount())
                .seller(MemberSellerInfo.fromEntity(entity.getMemberSeller()))
                .salesProductList(
                        entity.getSalesProductList() == null
                                ? null
                                : entity.getSalesProductList().stream()
                                .map(SalesProductSimpleInfo::fromEntity)
                                .collect(Collectors.toList()))
                .build();
    }
}
