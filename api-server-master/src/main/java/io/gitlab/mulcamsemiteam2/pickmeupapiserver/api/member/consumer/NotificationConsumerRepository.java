package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.NotificationConsumer;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.math.BigInteger;
import java.util.List;

public interface NotificationConsumerRepository extends JpaRepository<NotificationConsumer, BigInteger> {

    public List<NotificationConsumer> findByMemberConsumer_Id(Long memberId, Pageable pageable);

    public void deleteByMemberConsumer_Id(Long memberId);
}
