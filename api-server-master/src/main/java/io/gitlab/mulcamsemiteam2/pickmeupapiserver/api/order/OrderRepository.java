package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.OrderState;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.Order;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigInteger;
import java.util.List;

public interface OrderRepository extends JpaRepository<Order, BigInteger> {

    @Query("FROM Order m " +
            "WHERE " +
            "(:sellerId IS NULL OR m.memberSeller.id = :sellerId) " +
            "AND (:consumerId IS NULL OR m.memberConsumer.id = :consumerId) " +
            "AND (:state IS NULL OR m.state = :state)")
    public List<Order> findByQuery(
            @Param("sellerId") Long sellerId,
            @Param("consumerId") Long consumerId,
            @Param("state") OrderState state,
            Pageable pageable);
}
