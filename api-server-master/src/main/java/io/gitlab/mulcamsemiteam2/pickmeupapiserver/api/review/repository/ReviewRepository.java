package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.repository;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity.Review;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigInteger;
import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, BigInteger> {
    public List<Review> findBySalesPage_Id(BigInteger id, Pageable pageable);

    @Query("FROM Review m " +
            "WHERE " +
            "(:sellerId IS NULL OR m.memberSeller.id = :sellerId) " +
            "AND (:writerId IS NULL OR m.memberConsumer.id = :writerId) " +
            "AND (:salesPageId IS NULL OR m.salesPage.id = :salesPageId)")
    public List<Review> findByQuery(
            @Param("sellerId") Long sellerId,
            @Param("writerId") Long writerId,
            @Param("salesPageId") BigInteger salesPageId,
            Pageable pageable);
}
