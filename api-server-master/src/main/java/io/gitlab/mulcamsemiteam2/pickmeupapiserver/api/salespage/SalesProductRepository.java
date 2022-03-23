package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesProduct;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigInteger;
import java.util.List;

public interface SalesProductRepository extends JpaRepository<SalesProduct, BigInteger> {

    public SalesProduct findByProduct_Id(BigInteger productId);

    @Query("FROM SalesProduct m " +
            "JOIN FETCH m.product p " +
            "JOIN FETCH m.memberSeller s " +
            "JOIN s.sellerAvailableAreas a " +
            "WHERE " +
            "(:eupmyundongCode IS NULL OR a.areaEupmyundong.code = :eupmyundongCode) " +
            "AND (:category1 IS NULL OR p.category1 = :category1) " +
            "AND (:category2 IS NULL OR p.category2 = :category2) " +
            "AND (:minPrice IS NULL OR p.price >= :minPrice) " +
            "AND (:maxPrice IS NULL OR p.price <= :maxPrice) " +
            "AND (:name IS NULL OR p.name LIKE CONCAT('%',:name,'%'))")
    public List<SalesProduct> findByQuery(
            @Param("eupmyundongCode") String eupmyundongCode,
            @Param("category1") Integer category1,
            @Param("category2") Integer category2,
            @Param("minPrice") Integer minPrice,
            @Param("maxPrice") Integer maxPrice,
            @Param("name") String name,
            Pageable pageable);
}
