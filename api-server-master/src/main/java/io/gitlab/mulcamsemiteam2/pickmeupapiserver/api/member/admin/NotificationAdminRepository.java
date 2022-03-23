package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.entity.NotificationAdmin;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.math.BigInteger;
import java.util.List;

public interface NotificationAdminRepository extends JpaRepository<NotificationAdmin, BigInteger> {

    public List<NotificationAdmin> findByMemberAdmin_Id(Long memberId, Pageable pageable);

    public void deleteByMemberAdmin_Id(Long memberId);
}
