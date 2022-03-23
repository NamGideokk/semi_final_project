package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.Order;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity.Review;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class SalesPage {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid", columnDefinition = "BIGINT UNSIGNED ZEROFILL")
    private BigInteger id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seller_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private MemberSeller memberSeller;

    @NotNull @Size(max = 128)
    private String name;

    @NotNull
    @Column(columnDefinition = "MEDIUMBLOB")
    private String content;

    @NotNull
    @Column(columnDefinition = "INT UNSIGNED DEFAULT 0")
    private Integer clickCount = 0;

    @NotNull
    @Column(columnDefinition = "TINYINT(1) DEFAULT 1")
    private Boolean isPickupAble = true;

    @NotNull
    @Column(columnDefinition = "TINYINT(1) DEFAULT 0")
    private Boolean isAbleNormalDelivery = false;

    @Column(columnDefinition = "SMALLINT UNSIGNED")
    private Integer normalDeliveryCorpId;

    @Column(columnDefinition = "SMALLINT UNSIGNED")
    private Integer normalDeliveryFee;

    @Column(columnDefinition = "SMALLINT UNSIGNED")
    private Integer normalDeliveryFeeQty;

    @NotNull
    @Column(columnDefinition = "TINYINT(1) DEFAULT 0")
    private Boolean isAbleOnedayDelivery = false;

    @Column(columnDefinition = "SMALLINT UNSIGNED")
    private Integer onedayDeliveryCorpId;

    @Column(columnDefinition = "SMALLINT UNSIGNED")
    private Integer ondayDeliveryFee;

    @Column(columnDefinition = "SMALLINT UNSIGNED")
    private Integer ondayDeliveryFeeQty;

    @CreationTimestamp
    @Column(columnDefinition = "DATETIME DEFAULT now()", nullable = false)
    private Date regTime;

    private Date lastModTime;

    @NotNull
    @Column(columnDefinition = "BIGINT UNSIGNED DEFAULT 0")
    private BigInteger totalSellCount = BigInteger.valueOf(0);

    @Column(columnDefinition = "DOUBLE UNSIGNED")
    private Double avgFeedbackPoint;

    @NotNull
    @Column(columnDefinition = "BIGINT UNSIGNED DEFAULT 0")
    private BigInteger totalFeedbackCount = BigInteger.valueOf(0);

    @NotNull
    @Column(columnDefinition = "TINYINT(1) DEFAULT 0")
    private Boolean isDisable = false;

    private Date denyTime;

    @OneToMany(mappedBy = "salesPage", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<SalesProduct> salesProductList = new ArrayList<>();

    @OneToMany(mappedBy = "salesPage", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Review> reviewList = new ArrayList<>();

    @OneToMany(mappedBy = "salesPage")
    private List<Order> orderList = new ArrayList<>();

    @PreRemove
    private void preRemove() {
        orderList.forEach(v -> v.setSalesPage(null));
        orderList.clear();
    }

    @Builder
    public SalesPage(MemberSeller memberSeller, String name, String content) {
        this.memberSeller = memberSeller;
        this.name = name;
        this.content = content;
    }
}
