package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.entity.AreaSigungu;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class AreaSigunguDto {
    private String code;

    private String name;

    public static AreaSigunguDto fromEntity(AreaSigungu sigungu) {
        if (sigungu == null) {
            return null;
        }
        return builder()
                .code(sigungu.getCode())
                .name(sigungu.getName())
                .build();
    }
}
