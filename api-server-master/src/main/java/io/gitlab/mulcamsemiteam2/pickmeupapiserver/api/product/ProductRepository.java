package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.entity.Product;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.math.BigInteger;
import java.util.List;

public interface ProductRepository extends JpaRepository<Product, BigInteger> {

    @Query("FROM Product m " +
            "WHERE " +
            "m.seller.id = :sellerId " +
            "AND (:category1 IS NULL OR m.category1 = :category1) " +
            "AND (:category2 IS NULL OR m.category2 = :category2) " +
            "AND (:maxPrice IS NULL OR m.price <= :maxPrice) " +
            "AND (:name IS NULL OR m.name LIKE CONCAT('%',:name,'%'))")
    public List<Product> findByQuery(
            @Param("sellerId") Long sellerId,
            @Param("category1") Integer category1,
            @Param("category2") Integer category2,
            @Param("maxPrice") Integer maxPrice,
            @Param("name") String name,
            Pageable pageable);
}
