package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.dto.AreaEupmyundongDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.MemberRoles;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

// 사용자 정보 조회 결과 전달용
@Data
@AllArgsConstructor
@Builder
public class MemberSellerInfo {
    private String role;
    private Long id;
    private String email;
    private String name;
    private int level;
    private String address1;
    private String address2;
    private String eupmyundongCode;
    private String contact;
    private int companyClass;
    private String companyCode;
    private String companyName;
    private String companyOwnerName;
    private Integer unreadNotiCount;
    private BigInteger totalSellCount;
    private Double avgFeedbackPoint;
    private BigInteger totalFeedbackCount;
    private Date lastAccessTime;
    private Date denyTime;
    private Date regTime;
    private List<AreaEupmyundongDto> availableAreaList;

    public static MemberSellerInfo fromEntity(MemberSeller entity) {
        if (entity == null) {
            return null;
        }
        return builder()
                .role(MemberRoles.SELLER)
                .id(entity.getId())
                .email(entity.getEmail())
                .name(entity.getName())
                .level(entity.getLevel())
                .address1(entity.getAddress().getAddress1())
                .address2(entity.getAddress().getAddress2())
                .eupmyundongCode(entity.getAddress().getEupmyundongCode())
                .contact(entity.getTeleContact())
                .companyClass(entity.getCompanyClassification())
                .companyCode(entity.getCompanyCode())
                .companyName(entity.getCompanyName())
                .companyOwnerName(entity.getOwnerName())
                .unreadNotiCount(entity.getUnreadNotiCount())
                .totalSellCount(entity.getTotalSellCount())
                .lastAccessTime(entity.getLastAccessTime())
                .denyTime(entity.getDenyTime())
                .regTime(entity.getRegTime())
                .availableAreaList(
                        entity.getSellerAvailableAreas() == null
                        ? null
                        : entity.getSellerAvailableAreas().stream().map(
                                (area) -> {
                                    return AreaEupmyundongDto.fromEntity(area.getAreaEupmyundong());
                                }
                        ).collect(Collectors.toList()))
                .build();
    }
}
