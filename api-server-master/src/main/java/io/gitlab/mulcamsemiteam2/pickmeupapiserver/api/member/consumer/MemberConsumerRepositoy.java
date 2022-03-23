package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class MemberConsumerRepositoy {

    private final EntityManager em;

    public void save(MemberConsumer member) {
        em.persist(member);
    }

    public MemberConsumer findOne(Long id) {
        return em.find(MemberConsumer.class, id);
    }

    public List<MemberConsumer> findByEmail(String email) {
        return em.createQuery("select m from MemberConsumer m where m.email = :email", MemberConsumer.class).setParameter("email", email).getResultList();
    }

    public void deleteOne(MemberConsumer consumer) {
        em.remove(consumer);
    }

    public MemberConsumer updateUser(byte[] password, long id) {
        System.out.println("memberrepository" + id);
        System.out.println("memberrepository" + password);


        MemberConsumer memberConsumer = em.find(MemberConsumer.class, id);
        System.out.println("memberrepository" + memberConsumer);
        memberConsumer.setPwd(password);
        return memberConsumer;
    }

}
