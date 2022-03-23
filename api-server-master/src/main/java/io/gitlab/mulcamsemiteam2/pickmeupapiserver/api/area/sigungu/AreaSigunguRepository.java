package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.entity.AreaSigungu;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class AreaSigunguRepository {
    private final EntityManager em;

    public AreaSigungu findOne(String id) {
        return em.find(AreaSigungu.class, id);
    }

    public List<AreaSigungu> findAll() {
        return em.createQuery("select m from AreaSigungu m", AreaSigungu.class).getResultList();
    }
}
