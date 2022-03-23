package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.entity.Address;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.Order;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.entity.Product;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity.ReviewReply;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesPage;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesProduct;
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
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Entity
@Getter
@Setter
@DynamicInsert
@DynamicUpdate
@Table(name="member_seller")
@NoArgsConstructor
public class MemberSeller extends CommonMemberSecureInfo {

    @NotNull @Size(min = 2, max = 20)
    private String name;

    @Column(columnDefinition = "TINYINT UNSIGNED ZEROFILL DEFAULT 000", precision=3, nullable = false)
    private Integer level;

    @NotNull @Size(max = 20)
    private String ownerName;

    @Embedded
    private Address address;

    @NotNull @Size(max = 20)
    private String teleContact;

    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED")
    private Integer companyClassification;

    @NotNull @Size(max = 32)
    private String companyCode;

    @NotNull @Size(max = 64)
    private String companyName;

    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED DEFAULT 0")
    private Integer unreadNotiCount = 0;

    @Column(columnDefinition = "BIGINT UNSIGNED DEFAULT 0", nullable = false)
    private BigInteger totalSellCount;

    @Column(columnDefinition = "DOUBLE UNSIGNED")
    private Double avgFeedbackPoint;

    @Column(columnDefinition = "BIGINT UNSIGNED DEFAULT 0", nullable = false)
    private BigInteger totalFeedbackCount;

    @CreationTimestamp
    @Column(columnDefinition = "DATETIME DEFAULT now()", nullable = false)
    private Date lastAccessTime;

    private Date denyTime;

    @OneToMany(mappedBy = "memberSeller", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<SellerAvailableArea> sellerAvailableAreas = new ArrayList<>();

    @OneToMany(mappedBy = "seller", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<Product> productList = new ArrayList<>();

    @OneToMany(mappedBy = "memberSeller", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<SalesPage> salesPageList = new ArrayList<>();

    @OneToMany(mappedBy = "memberSeller", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<SalesProduct> salesProductList = new ArrayList<>();

    @OneToMany(mappedBy = "memberSeller")
    private List<Order> orderList = new ArrayList<>();

    @OneToMany(mappedBy = "memberSeller")
    private List<ReviewReply> reviewReplyList = new ArrayList<>();

    @OneToMany(mappedBy = "memberSeller", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<NotificationSeller> notificationList = new ArrayList<>();

    @Builder
    public MemberSeller(Long id, String email, byte[] pwd, String name,
                        int level, String ownerName, Address address, String teleContact,
                        int companyClassification, String companyCode, String companyName,
                        List<SellerAvailableArea> sellerAvailableAreas) {
        super(id, email, pwd);
        this.name = name;
        this.level = level;
        this.ownerName = ownerName;
        this.address = address;
        this.teleContact = teleContact;
        this.companyClassification = companyClassification;
        this.companyCode = companyCode;
        this.companyName = companyName;
        this.sellerAvailableAreas = sellerAvailableAreas;
    }

    @PreRemove
    private void preRemove() {
        orderList.forEach(v -> v.setMemberSeller(null));
        orderList.clear();
        reviewReplyList.forEach(v -> v.setMemberSeller(null));
        reviewReplyList.clear();
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
        authorities.add(new SimpleGrantedAuthority("ROLE_" + MemberRoles.SELLER));
        return authorities;
    }
}