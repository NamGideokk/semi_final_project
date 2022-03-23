package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.PurchasePayment;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.math.BigInteger;
import java.util.List;

public interface PurchasePaymentRepository extends JpaRepository<PurchasePayment, BigInteger> {

    public List<PurchasePayment> findByMemberConsumer_Id(Long memberId, Pageable pageable);
}
