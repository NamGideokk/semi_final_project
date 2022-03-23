package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.entity.AreaEupmyundong;
import lombok.*;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;

import static javax.persistence.FetchType.LAZY;

@Entity
@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@IdClass(SellerAvailableAreaKey.class)
public class SellerAvailableArea {

    @Id
    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "seller_id", columnDefinition = "INT UNSIGNED ZEROFILL")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private MemberSeller memberSeller;

    @Id
    @ManyToOne(fetch = LAZY)
    @JoinColumn(name = "eupmyundong_code", columnDefinition = "VARCHAR(10)")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private AreaEupmyundong areaEupmyundong;
}
