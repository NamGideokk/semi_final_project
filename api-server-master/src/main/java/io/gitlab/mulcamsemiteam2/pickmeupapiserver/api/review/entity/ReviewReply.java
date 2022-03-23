package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
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
import java.util.Date;


@Entity
@Getter
@Setter
@NoArgsConstructor
public class ReviewReply {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid", columnDefinition = "BIGINT UNSIGNED ZEROFILL")
    private BigInteger id;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "review_id", nullable = false, unique = true)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private Review review;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seller_id")
    private MemberSeller memberSeller;

    @NotNull
    @Size(max = 400)
    private String content;

    @CreationTimestamp
    @Column(columnDefinition = "DATETIME DEFAULT now()", nullable = false)
    private Date regTime;

    @Builder
    public ReviewReply(Review review, MemberSeller memberSeller, String content) {
        this.review = review;
        this.memberSeller = memberSeller;
        this.content = content;
    }
}
