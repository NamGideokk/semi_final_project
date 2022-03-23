package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.entity.AreaSido;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class AreaSidoRepository {
    private final EntityManager em;

    public AreaSido findOne(String id) {
        return em.find(AreaSido.class, id);
    }

    public List<AreaSido> findAll() {
        return em.createQuery("select m from AreaSido m", AreaSido.class).getResultList();
    }
}
