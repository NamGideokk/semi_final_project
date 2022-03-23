package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.dto.AreaSido2EupmyundongDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.dto.AreaSido2SigunguDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.dto.AreaSidoDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.entity.AreaSido;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
public class AreaSidoController {

    @Autowired
    private AreaSidoService areaSidoService;

    // 코드에 해당하는 시도 정보를 제공한다.
    @GetMapping("/api/public/area/sido/{code}")
    public Object one(
            @PathVariable("code") String code,
            @RequestParam(value = "depth", defaultValue = "") String depth
    ) {
        AreaSido result = areaSidoService.getSido(code);
        if(depth.equals("eupmyundong")) {
            return AreaSido2EupmyundongDto.fromEntity(result);
        } else if(depth.equals("sigungu")) {
            return AreaSido2SigunguDto.fromEntity(result);
        }
        // else
        return AreaSidoDto.fromEntity(result);
    }

    // 모든 시도 목록을 제공한다.
    @GetMapping("/api/public/area/sido/list")
    public List<Object> listAll(
            @RequestParam(value = "depth", defaultValue = "") String depth
    ) {
        List<AreaSido> result = areaSidoService.getSidoListAll();
        if(depth.equals("eupmyundong")) {
            return result.stream().map(AreaSido2EupmyundongDto::fromEntity).collect(Collectors.toList());
        } else if(depth.equals("sigungu")) {
            return result.stream().map(AreaSido2SigunguDto::fromEntity).collect(Collectors.toList());
        }
        // else
        return result.stream().map(AreaSidoDto::fromEntity).collect(Collectors.toList());
    }
}
