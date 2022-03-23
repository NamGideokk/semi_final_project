package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
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

@Entity
@Getter
@Setter
public class PurchasePayment {

    public PurchasePayment() {
    }

    @Builder
    public PurchasePayment(MemberConsumer memberConsumer, Integer receiveMethod,
                           String receiverName, String receiverContact, String receiverComment,
                           String deliveryAddress, Integer paymentMethod, String paymentDetailsJson) {
        this.memberConsumer = memberConsumer;
        this.receiveMethod = receiveMethod;
        this.receiverName = receiverName;
        this.receiverContact = receiverContact;
        this.receiverComment = receiverComment;
        this.deliveryAddress = deliveryAddress;
        this.paymentMethod = paymentMethod;
        this.paymentDetailsJson = paymentDetailsJson;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid", columnDefinition = "BIGINT UNSIGNED ZEROFILL")
    private BigInteger id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "consumer_id")
    private MemberConsumer memberConsumer;

    // 수령 방법. 0: 직접 픽업, 1: 일반 배송, 2: 당일 배송
    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED")
    private Integer receiveMethod;

    @NotNull @Size(max = 20)
    private String receiverName;

    @NotNull @Column(length = 20)
    private String receiverContact;

    @Column(length = 64)
    private String receiverComment;

    @Column(length = 255)
    private String deliveryAddress;

    @CreationTimestamp
    @Column(columnDefinition = "DATETIME DEFAULT now()", nullable = false)
    private Date paymentTime;

    // 결제 수단. 0: 현금 직접 전달, 1: 계좌이체, 2: 카드
    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED")
    private Integer paymentMethod;

    @NotNull
    @Column(columnDefinition = "JSON")
    private String paymentDetailsJson;

    // Order와 Payment는 삭제되면 안됨
    @OneToMany(mappedBy = "purchasePayment", cascade = CascadeType.PERSIST)
    private List<Order> orderList = new ArrayList<>();

    public void addOrder(Order order) {
        orderList.add(order);
        order.setPurchasePayment(this);
    }
}
