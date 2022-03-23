package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.dto.AreaEupmyundongDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.dto.AreaEupmyundongWithParentDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.entity.AreaEupmyundong;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RestController
public class AreaEupmyundongController {

    @Autowired
    private AreaEupmyundongService areaEupmyundongService;

    // 코드에 해당하는 읍면동 정보를 제공한다.
    @GetMapping("/api/public/area/eupmyundong/{code}")
    public AreaEupmyundongWithParentDto one(@PathVariable("code") String code) {
        AreaEupmyundong result = areaEupmyundongService.getEupmyundong(code);
        return AreaEupmyundongWithParentDto.fromEntity(result);
    }

    // 모든 읍면동 목록을 제공한다.
    @GetMapping("/api/public/area/eupmyundong/list")
    public List<AreaEupmyundongDto> listAll() {
        List<AreaEupmyundong> result = areaEupmyundongService.getEupmyundongListAll();
        return result.stream().map(AreaEupmyundongDto::fromEntity).collect(Collectors.toList());
    }
}
