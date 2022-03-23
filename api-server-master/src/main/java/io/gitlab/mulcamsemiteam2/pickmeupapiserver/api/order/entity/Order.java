package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.OrderState;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.coupon.entity.Coupon;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.entity.Product;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesPage;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesProduct;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import static javax.persistence.FetchType.LAZY;

@Getter
@Setter
@Entity
@Table(name = "`order`")
public class Order {

    public Order() {
    }

    @Builder
    public Order(PurchasePayment purchasePayment, MemberConsumer memberConsumer, MemberSeller memberSeller,
                 String sellerName, SalesProduct salesProduct, SalesPage salesPage, Product product, String productName,
                 Integer productPrice, Integer productDiscountRate, Integer receiveMethod, Integer deliveryFee,
                 Order togetherDeliveryOrderMaster, Integer qty, Integer couponDiscount) {
        this.purchasePayment = purchasePayment;
        this.memberConsumer = memberConsumer;
        this.memberSeller = memberSeller;
        this.sellerName = sellerName;
        this.salesProduct = salesProduct;
        this.salesPage = salesPage;
        this.product = product;
        this.productName = productName;
        this.productPrice = productPrice;
        this.productDiscountRate = productDiscountRate;
        this.receiveMethod = receiveMethod;
        this.deliveryFee = deliveryFee;
        this.togetherDeliveryOrderMaster = togetherDeliveryOrderMaster;
        this.qty = qty;
        this.couponDiscount = couponDiscount;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid", columnDefinition = "BIGINT UNSIGNED ZEROFILL")
    private BigInteger id;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "purchase_payment_id", nullable = false)
    private PurchasePayment purchasePayment;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "consumer_id")
    private MemberConsumer memberConsumer;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "seller_id")
    private MemberSeller memberSeller;

    @NotNull @Size(max = 20)
    private String sellerName;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "sales_product_id")
    private SalesProduct salesProduct;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "sales_page_id")
    private SalesPage salesPage;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "product_id")
    private Product product;

    @NotNull @Size(max = 64)
    private String productName;

    @NotNull
    @Column(columnDefinition = "INT UNSIGNED")
    private Integer productPrice;

    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED")
    private Integer productDiscountRate;

    // 수령 방법. 0: 직접 픽업, 1: 일반 배송, 2: 당일 배송
    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED")
    private Integer receiveMethod;

    @Column(columnDefinition = "SMALLINT UNSIGNED")
    private Integer deliveryFee;

    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "together_delivery_order_id")
    private Order togetherDeliveryOrderMaster; // 합배송비 담당하는 주문

    @NotNull
    @Column(columnDefinition = "SMALLINT UNSIGNED")
    private Integer qty;

    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED DEFAULT 0 COMMENT '상품 준비 상태 : 0, 상품 준비 완료 : 10, 상품 픽업 완료 : 20, 상품 취소 : 30'")
    private OrderState state = OrderState.PRODUCT_WAITING;

    @Column(columnDefinition = "MEDIUMINT UNSIGNED")
    private Integer couponDiscount;

    @OneToMany(mappedBy = "togetherDeliveryOrderMaster")
    private List<Order> togetherDeliveryOrderList = new ArrayList<>(); // 합배송으로 배송비를 면제 받은 주문들

    @OneToOne(mappedBy = "usedOrder", fetch = FetchType.LAZY)
    private Coupon usedCoupon;

    @CreationTimestamp
    @Column(columnDefinition = "DATETIME DEFAULT now()", nullable = false)
    private Date regTime;
}
