package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.entity.AreaEupmyundong;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.entity.AreaSido;
import lombok.Getter;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Table(uniqueConstraints={
        @UniqueConstraint(columnNames = {"sido_code", "code"})
})
public class AreaSigungu implements Serializable {
    @Id
    @Size(max = 5, min = 5)
    private String code;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "sido_code", nullable = false, columnDefinition = "VARCHAR(2)")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private AreaSido sido;

    @NotNull @Size(max = 40)
    private String name;

    @OneToMany(mappedBy = "sigungu", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<AreaEupmyundong> eupmyundongList = new ArrayList<>();
}
