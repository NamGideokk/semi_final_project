package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.NotificationSeller;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.math.BigInteger;
import java.util.List;

public interface NotificationSellerRepository extends JpaRepository<NotificationSeller, BigInteger> {

    public List<NotificationSeller> findByMemberSeller_Id(Long sellerId, Pageable pageable);

    public void deleteByMemberSeller_Id(Long sellerId);
}
