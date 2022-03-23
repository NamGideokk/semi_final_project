package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.entity.AreaSigungu;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.SellerAvailableArea;
import lombok.Getter;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
public class AreaEupmyundong {
    @Id
    @Size(max = 10, min = 10)
    private String code;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumns({
            @JoinColumn(name = "sido_code", referencedColumnName = "sido_code", nullable = false, columnDefinition = "VARCHAR(2)"),
            @JoinColumn(name = "sigungu_code", referencedColumnName = "code", nullable = false, columnDefinition = "VARCHAR(5)")
    })
    @OnDelete(action = OnDeleteAction.CASCADE)
    private AreaSigungu sigungu;

    @OneToMany(mappedBy = "areaEupmyundong", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<SellerAvailableArea> sellerAvailableAreas = new ArrayList<>();

    @NotNull @Size(max = 40)
    private String name;

    @Column(name = "axis_x")
    private Double axisX;

    @Column(name = "axis_y")
    private Double axisY;
}
