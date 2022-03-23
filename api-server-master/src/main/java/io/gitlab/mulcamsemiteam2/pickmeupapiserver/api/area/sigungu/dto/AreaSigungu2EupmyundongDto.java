package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.dto.AreaEupmyundongDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.entity.AreaSigungu;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.util.List;
import java.util.stream.Collectors;

@Data
@Builder
@AllArgsConstructor
public class AreaSigungu2EupmyundongDto {
    private String code;

    private String name;

    private List<AreaEupmyundongDto> eupmyundongList;

    public static AreaSigungu2EupmyundongDto fromEntity(AreaSigungu sigungu) {
        if (sigungu == null) {
            return null;
        }
        return builder()
                .code(sigungu.getCode())
                .name(sigungu.getName())
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
