package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.product.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.config.PickmeupProperties;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.Order;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.apache.tomcat.util.http.fileupload.FileUtils;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.File;
import java.io.IOException;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Getter
@Setter
@NoArgsConstructor
@DynamicInsert
public class Product {

    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid", columnDefinition = "BIGINT UNSIGNED ZEROFILL")
    private BigInteger id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "seller_id", nullable = false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    private MemberSeller seller;

    @NotNull @Size(max = 64)
    private String name;

    @NotNull @Size(max = 255)
    private String images;

    @NotNull
    @Column(columnDefinition = "INT UNSIGNED")
    private Integer category1;

    @NotNull
    @Column(columnDefinition = "INT UNSIGNED")
    private Integer category2;

    @Size(max = 20)
    private String additionalDesc;

    @NotNull
    @Column(columnDefinition = "INT UNSIGNED")
    private Integer price;

    @NotNull
    @Column(columnDefinition = "TINYINT UNSIGNED DEFAULT 0")
    private Integer discountRate = 0;

    @NotNull
    @Column(columnDefinition = "INT UNSIGNED")
    private Integer stockCount;

    @NotNull
    @Column(columnDefinition = "INT UNSIGNED DEFAULT 0")
    private Integer sellCount = 0;

    @Column(columnDefinition = "DOUBLE UNSIGNED")
    private Double avgFeedbackPoint;

    @NotNull
    @Column(columnDefinition = "INT UNSIGNED DEFAULT 0")
    private Integer feedbackCount = 0;

    @CreationTimestamp
    @Column(columnDefinition = "DATETIME DEFAULT now()", nullable = false)
    private Date regTime;

    private Date lastModTime;

    private Date denyTime;

    @OneToMany(mappedBy = "product")
    private List<Order> orderList = new ArrayList<>();

    @Builder
    public Product(MemberSeller seller, String name, String images, Integer category1, Integer category2,
                   String additionalDesc, Integer price, Integer discountRate, Integer stockCount) {
        this.seller = seller;
        this.name = name;
        this.images = images;
        this.category1 = category1;
        this.category2 = category2;
        this.additionalDesc = additionalDesc;
        this.price = price;
        this.discountRate = discountRate;
        this.stockCount = stockCount;
    }

    @PreRemove
    private void preRemove() {
        orderList.forEach(v -> v.setProduct(null));
        orderList.clear();
    }

    @PostRemove
    private void postRemove() {
        String resourcesPath = PickmeupProperties.getInstance().getUploadPath();
        File productUploadDir = new File(resourcesPath, "product");
        File eachProductUploadDir = new File(productUploadDir, id.toString());

        try {
            FileUtils.deleteDirectory(eachProductUploadDir);
        } catch (IOException ignore) { }
    }
}
