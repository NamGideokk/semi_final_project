package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.entity.AreaEupmyundong;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class AreaEupmyundongRepository {
    private final EntityManager em;

    public AreaEupmyundong findOne(String id) {
        return em.find(AreaEupmyundong.class, id);
    }

    public List<AreaEupmyundong> findAll() {
        return em.createQuery("select m from AreaEupmyundong m", AreaEupmyundong.class).getResultList();
    }
}
