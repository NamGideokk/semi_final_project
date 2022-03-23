package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class MemberSellerRepositoy {
    private final EntityManager em;

    public void save(MemberSeller member) {
        em.persist(member);
    }

    public MemberSeller findOne(Long id) {
        return em.find(MemberSeller.class, id);
    }

    public List<MemberSeller> findByEmail(String email) {
        return em.createQuery("select m from MemberSeller m where m.email = :email", MemberSeller.class).setParameter("email", email).getResultList();
    }

    public List<MemberSeller> findByName(String name) {
        return em.createQuery("select m from MemberSeller m where m.name = :name", MemberSeller.class).setParameter("name", name).getResultList();
    }

    public void deleteOne(MemberSeller seller) {
        em.remove(seller);
    }

    public void flush() {
        em.flush();
    }
}
