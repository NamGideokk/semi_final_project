package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.coupon.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart.entity.Cart;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.Order;
import lombok.Getter;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigInteger;
import java.util.Date;

@Getter
@Entity
public class Coupon {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid", columnDefinition = "BIGINT UNSIGNED ZEROFILL")
    private BigInteger id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "consumer_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private MemberConsumer consumer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seller_id")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private MemberSeller seller;

    @NotNull @Size(max = 20)
    private String name;

    @Column(columnDefinition = "TINYINT UNSIGNED ZEROFILL DEFAULT 000", nullable = false)
    private Integer type;

    @NotNull
    @Column(columnDefinition = "MEDIUMINT UNSIGNED")
    private Integer discount;

    @NotNull
    @Column(columnDefinition = "MEDIUMINT UNSIGNED")
    private Integer minPayment;

    @Column(columnDefinition = "MEDIUMINT UNSIGNED")
    private Integer maxDiscount;

    @Column(columnDefinition = "INT UNSIGNED")
    private Long category;

    @NotNull
    @Column(columnDefinition = "DATE")
    private Date expireDate;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "used_order_id", unique = true)
    private Order usedOrder;

    @OneToOne(mappedBy = "coupon", fetch = FetchType.LAZY)
    private Cart cart;

    @PreRemove
    private void preRemove() {
        // ON DELETE SET NULL을 처리하기 위해 동작이 제대로 되는지는 확인해봐야 함
        cart.setCoupon(null);
    }
}
