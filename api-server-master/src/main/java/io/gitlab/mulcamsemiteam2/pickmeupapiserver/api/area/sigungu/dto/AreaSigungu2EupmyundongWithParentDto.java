package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.dto.AreaEupmyundongDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.entity.AreaSigungu;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.dto.AreaSidoDto;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.stream.Collectors;

@Data
@Builder
@AllArgsConstructor
public class AreaSigungu2EupmyundongWithParentDto {
    private String code;

    private String name;

    private AreaSidoDto sido;

    private List<AreaEupmyundongDto> eupmyundongList;

    public static AreaSigungu2EupmyundongWithParentDto fromEntity(AreaSigungu sigungu) {
        if (sigungu == null) {
            return null;
        }
        return builder()
                .code(sigungu.getCode())
                .name(sigungu.getName())
                .sido(AreaSidoDto.fromEntity(sigungu.getSido()))
                .eupmyundongList(
                        sigungu.getEupmyundongList() == null
                        ? null
                        : sigungu.getEupmyundongList()
                                .stream()
                                .map(AreaEupmyundongDto::fromEntity)
                                .collect(Collectors.toList()))
                .build();
    }
}
