package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.dto.AreaSigungu2EupmyundongDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.dto.AreaSigungu2EupmyundongWithParentDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.dto.AreaSigunguDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.dto.AreaSigunguWithParentDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.entity.AreaSigungu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
public class AreaSigunguController {

    @Autowired
    private AreaSigunguService areaSigunguService;

    // 코드에 해당하는 시군구 정보를 제공한다.
    @GetMapping("/api/public/area/sigungu/{code}")
    public Object one(
            @PathVariable("code") String code,
            @RequestParam(value = "depth", defaultValue = "") String depth
    ) {
        AreaSigungu result = areaSigunguService.getSigungu(code);
        if(depth.equals("eupmyundong")) {
            return AreaSigungu2EupmyundongWithParentDto.fromEntity(result);
        }
        // else
        return AreaSigunguWithParentDto.fromEntity(result);
    }

    // 모든 시군구 목록을 제공한다.
    @GetMapping("/api/public/area/sigungu/list")
    public List<Object> listAll(
            @RequestParam(value = "depth", defaultValue = "") String depth
    ) {
        List<AreaSigungu> result = areaSigunguService.getSigunguListAll();
        if(depth.equals("eupmyundong")) {
            return result.stream().map(AreaSigungu2EupmyundongDto::fromEntity).collect(Collectors.toList());
        }
        // else
        return result.stream().map(AreaSigunguDto::fromEntity).collect(Collectors.toList());
    }
}
