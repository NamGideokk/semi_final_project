package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.entity.AreaSigungu;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AreaSigunguService {
    private final AreaSigunguRepository areaSigunguRepository;

    // 모든 시군구 목록 조회
    public List<AreaSigungu> getSigunguListAll() {
        List<AreaSigungu> sigunguList = areaSigunguRepository.findAll();
        return sigunguList;
    }

    // 코드로 해당 시군구 항목 조회
    public AreaSigungu getSigungu(String code) {
        AreaSigungu sigungu = areaSigunguRepository.findOne(code);
        return sigungu;
    }
}
