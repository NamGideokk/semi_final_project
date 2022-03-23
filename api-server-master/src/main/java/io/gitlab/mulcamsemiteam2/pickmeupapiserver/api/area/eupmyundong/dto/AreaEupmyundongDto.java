package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.entity.AreaEupmyundong;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class AreaEupmyundongDto {
    private String code;

    private String name;

    private Double axisX;

    private Double axisY;

    public static AreaEupmyundongDto fromEntity(AreaEupmyundong eupmyundong) {
        if (eupmyundong == null) {
            return null;
        }
        return builder()
                .code(eupmyundong.getCode())
                .name(eupmyundong.getName())
                .axisX(eupmyundong.getAxisX())
                .axisY(eupmyundong.getAxisY())
                .build();
    }
}
