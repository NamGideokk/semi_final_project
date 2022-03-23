package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.coupon.entity.Coupon;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesProduct;
import lombok.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.math.BigInteger;

import static javax.persistence.FetchType.LAZY;

@Data
@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class Cart {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid", columnDefinition = "BIGINT UNSIGNED ZEROFILL")
    private BigInteger id;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "consumer_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private MemberConsumer memberConsumer;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "sales_product_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private SalesProduct salesProduct;

    @OneToOne(fetch = LAZY)
    @JoinColumn(name = "coupon_id", unique = true)
    private Coupon coupon;

    @Column(columnDefinition = "SMALLINT UNSIGNED DEFAULT 1", nullable = false)
    private Integer qty;
}
