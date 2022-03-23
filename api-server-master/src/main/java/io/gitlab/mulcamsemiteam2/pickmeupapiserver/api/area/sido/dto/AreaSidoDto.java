package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.entity.AreaSido;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class AreaSidoDto {
    private String code;

    private String name;

    public static AreaSidoDto fromEntity(AreaSido sido) {
        if (sido == null) {
            return null;
        }
        return builder()
                .code(sido.getCode())
                .name(sido.getName())
                .build();
    }
}