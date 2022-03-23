package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.entity.AreaEupmyundong;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AreaEupmyundongService {
    private final AreaEupmyundongRepository areaEupmyundongRepository;

    // 모든 읍면동 목록 조회
    public List<AreaEupmyundong> getEupmyundongListAll() {
        List<AreaEupmyundong> eupmyundongList = areaEupmyundongRepository.findAll();
        return eupmyundongList;
    }

    // 코드로 해당 읍면동 항목 조회
    public AreaEupmyundong getEupmyundong(String code) {
        AreaEupmyundong eupmyundong = areaEupmyundongRepository.findOne(code);
        return eupmyundong;
    }
}
