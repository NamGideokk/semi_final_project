package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.dto.AreaSigungu2EupmyundongDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.entity.AreaSido;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.stream.Collectors;

@Data
@Builder
@AllArgsConstructor
public class AreaSido2EupmyundongDto {
    private String code;

    private String name;

    private List<AreaSigungu2EupmyundongDto> sigunguList;

    public static AreaSido2EupmyundongDto fromEntity(AreaSido sido) {
        if (sido == null) {
            return null;
        }
        return builder()
                .code(sido.getCode())
                .name(sido.getName())
                .sigunguList(
                        sido.getSigunguList() == null
                        ? null
                        : sido.getSigunguList()
                                .stream()
                                .map(AreaSigungu2EupmyundongDto::fromEntity)
                                .collect(Collectors.toList()))
                .build();
    }
}