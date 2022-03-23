package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.entity.AreaEupmyundong;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.dto.AreaSidoDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.dto.AreaSigunguDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class AreaEupmyundongWithParentDto {
    private String code;

    private String name;

    private Double axisX;

    private Double axisY;

    private AreaSidoDto sido;

    private AreaSigunguDto sigungu;

    public static AreaEupmyundongWithParentDto fromEntity(AreaEupmyundong eupmyundong) {
        if (eupmyundong == null) {
            return null;
        }
        return builder()
                .code(eupmyundong.getCode())
                .name(eupmyundong.getName())
                .axisX(eupmyundong.getAxisX())
                .axisY(eupmyundong.getAxisY())
                .sido(AreaSidoDto.fromEntity(
                        eupmyundong.getSigungu() != null
                        ? eupmyundong.getSigungu().getSido()
                        : null))
                .sigungu(AreaSigunguDto.fromEntity(eupmyundong.getSigungu()))
                .build();
    }
}
