package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.cart.entity.Cart;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.entity.Address;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.Order;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.PurchasePayment;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity.Review;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.MemberRoles;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.model.CommonMemberSecureInfo;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Entity
@Getter
@Setter
@DynamicInsert
@DynamicUpdate
@Table(name="member_consumer")
@NoArgsConstructor
public class MemberConsumer extends CommonMemberSecureInfo {

    @NotNull @Size(min = 2, max = 20)
    private String name;

    @Column(columnDefinition = "TINYINT UNSIGNED ZEROFILL DEFAULT 000", precision=3, nullable = false)
    private int level;

    @NotNull @Size(max = 20)
    private String contact;

    @Embedded
    private Address address;

    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED DEFAULT 0")
    private Integer unreadNotiCount = 0;

    @Column(columnDefinition = "INT UNSIGNED DEFAULT 0", nullable = false)
    private int totalBuyCount;

    @Column(columnDefinition = "BIGINT UNSIGNED DEFAULT 0", nullable = false)
    private Long totalBuyCost;

    @CreationTimestamp
    @Column(columnDefinition = "DATETIME DEFAULT now()", nullable = false)
    private Date lastAccessTime;

    private Date denyTime;

    @OneToMany(mappedBy = "memberConsumer", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Cart> carts = new ArrayList<>();

    @OneToMany(mappedBy = "memberConsumer")
    private List<PurchasePayment> purchasePaymentList = new ArrayList<>();

    @OneToMany(mappedBy = "memberConsumer")
    private List<Order> orderList = new ArrayList<>();

    @OneToMany(mappedBy = "memberConsumer")
    private List<Review> reviewList = new ArrayList<>();

    @OneToMany(mappedBy = "memberConsumer", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<NotificationConsumer> notificationList = new ArrayList<>();

    @Builder
    public MemberConsumer(Long id, String email, byte[] pwd, String name, int level,
                          String contact, Address address) {
        super(id, email, pwd);
        this.name = name;
        this.level = level;
        this.contact = contact;
        this.address = address;
    }

    @PreRemove
    private void preRemove() {
        orderList.forEach(v -> v.setMemberConsumer(null));
        orderList.clear();
        purchasePaymentList.forEach(v -> v.setMemberConsumer(null));
        purchasePaymentList.clear();
        reviewList.forEach(v -> v.setMemberConsumer(null));
        reviewList.clear();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_" + MemberRoles.CONSUMER));
        return authorities;
    }
}
