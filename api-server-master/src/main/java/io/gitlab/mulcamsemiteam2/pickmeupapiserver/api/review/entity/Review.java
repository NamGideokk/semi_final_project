package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.Order;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.entity.SalesPage;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.config.PickmeupProperties;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Date;

@Entity
@Getter
@Setter
@NoArgsConstructor
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid", columnDefinition = "BIGINT UNSIGNED ZEROFILL")
    private BigInteger id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seller_id", nullable = false)
    private MemberSeller memberSeller;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "consumer_id")
    private MemberConsumer memberConsumer;

    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "order_id", unique = true)
    private Order order;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "sales_page_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private SalesPage salesPage;

    @NotNull @Size(max = 64)
    private String productName;

    @NotNull @Size(max = 400)
    private String content;

    @Size(max = 255)
    private String images;

    @NotNull
    @Column(columnDefinition = "DOUBLE(2, 1)")
    private Double reviewPoint;

    @CreationTimestamp
    @Column(columnDefinition = "DATETIME DEFAULT now()", nullable = false)
    private Date regTime;

    @OneToOne(mappedBy = "review", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    private ReviewReply reviewReply;

    public Review(MemberSeller memberSeller, MemberConsumer memberConsumer, Order order, SalesPage salesPage, String productName, String content, String images, Double reviewPoint) {
        this.memberSeller = memberSeller;
        this.memberConsumer = memberConsumer;
        this.order = order;
        this.salesPage = salesPage;
        this.productName = productName;
        this.content = content;
        this.images = images;
        this.reviewPoint = reviewPoint;
    }

    // 리뷰가 삭제되면 파일도 함께 정리한다.
    @PostRemove
    private void postRemove() {
        String resourcesPath = PickmeupProperties.getInstance().getUploadPath();
        File UploadDir = new File(resourcesPath, "review");
        File eachResourceUploadDir = new File(UploadDir, id.toString());

        try {
            FileUtils.deleteDirectory(eachResourceUploadDir);
        } catch (IOException ignore) { }
    }
}
