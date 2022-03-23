package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.entity.AreaSido;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class AreaSidoService {
    private final AreaSidoRepository areaSidoRepository;

    // 모든 시도 목록 조회
    public List<AreaSido> getSidoListAll() {
        List<AreaSido> sidoList = areaSidoRepository.findAll();
        return sidoList;
    }

    // 시도 코드로 해당 시도 항목 조회
    public AreaSido getSido(String code) {
        AreaSido sido = areaSidoRepository.findOne(code);
        return sido;
    }
}
