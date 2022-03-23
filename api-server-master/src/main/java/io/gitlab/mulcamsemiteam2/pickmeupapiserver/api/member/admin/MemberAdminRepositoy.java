package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.entity.MemberAdmin;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class MemberAdminRepositoy {
    private final EntityManager em;

    public void save(MemberAdmin member) {
        em.persist(member);
    }

    public MemberAdmin findOne(Long id) {
        return em.find(MemberAdmin.class, id);
    }

    public List<MemberAdmin> findByEmail(String email) {
        return em.createQuery("select m from MemberAdmin m where m.email = :email", MemberAdmin.class).setParameter("email", email).getResultList();
    }

    public void deleteOne(MemberAdmin admin) {
        em.remove(admin);
    }

    public void flush() {
        em.flush();
    }
}
