package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesPage;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigInteger;
import java.util.List;

public interface SalesPageRepository extends JpaRepository<SalesPage, BigInteger> {

    @Query("FROM SalesPage m " +
            "WHERE " +
            "m.memberSeller.id = :sellerId " +
            "AND (:name IS NULL OR m.name LIKE CONCAT('%',:name,'%'))")
    public List<SalesPage> findByQuery(
            @Param("sellerId") Long sellerId,
            @Param("name") String name,
            Pageable pageable);
}
