package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.Order;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.entity.Product;
import lombok.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

import static javax.persistence.FetchType.LAZY;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class SalesProduct {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid", columnDefinition = "BIGINT UNSIGNED ZEROFILL")
    private BigInteger id;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "sales_page_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private SalesPage salesPage;

    @OneToOne(fetch = LAZY)
    @JoinColumn(name = "product_id", nullable = false, unique = true)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Product product;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "seller_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private MemberSeller memberSeller;

    @OneToMany(mappedBy = "salesProduct")
    private List<Order> orderList = new ArrayList<>();

    @PreRemove
    private void preRemove() {
        orderList.forEach(v -> v.setSalesProduct(null));
        orderList.clear();
    }
}
