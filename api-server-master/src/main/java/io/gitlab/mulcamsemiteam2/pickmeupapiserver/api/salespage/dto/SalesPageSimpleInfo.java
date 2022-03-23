package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesPage;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.math.BigInteger;
import java.util.Date;

// 정보 조회 결과 전달용
@Data
@AllArgsConstructor
@Builder
public class SalesPageSimpleInfo {

    private BigInteger id;

    private String name;

    private Integer clickCount;

    private Date regTime;

    private Date lastModTime;

    private BigInteger totalSellCount;

    private Double avgFeedbackPoint;

    private BigInteger totalFeedbackCount;

    public static SalesPageSimpleInfo fromEntity(SalesPage entity) {
        if (entity == null) {
            return null;
        }
        return builder()
                .id(entity.getId())
                .name(entity.getName())
                .clickCount(entity.getClickCount())
                .regTime(entity.getRegTime())
                .lastModTime(entity.getLastModTime())
                .totalFeedbackCount(entity.getTotalFeedbackCount())
                .avgFeedbackPoint(entity.getAvgFeedbackPoint())
                .totalFeedbackCount(entity.getTotalFeedbackCount())
                .build();
    }
}
