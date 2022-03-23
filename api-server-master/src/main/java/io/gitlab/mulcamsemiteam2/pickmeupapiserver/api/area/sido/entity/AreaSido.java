package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sido.entity;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.sigungu.entity.AreaSigungu;
import lombok.Getter;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
public class AreaSido {
    @Id
    @Size(max = 2, min = 2)
    private String code;

    @NotNull @Size(max = 40)
    private String name;

    @OneToMany(mappedBy = "sido", cascade = CascadeType.ALL, orphanRemoval = true)
    private List<AreaSigungu> sigunguList = new ArrayList<>();
}
