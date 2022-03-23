package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.entity.AreaSigungu;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.dto.AreaSidoDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@Builder
@AllArgsConstructor
public class AreaSigunguWithParentDto {
    private String code;

    private String name;

    private AreaSidoDto sido;

    public static AreaSigunguWithParentDto fromEntity(AreaSigungu sigungu) {
        if (sigungu == null) {
            return null;
        }
        return builder()
                .code(sigungu.getCode())
                .name(sigungu.getName())
                .sido(AreaSidoDto.fromEntity(sigungu.getSido()))
                .build();
    }
}
