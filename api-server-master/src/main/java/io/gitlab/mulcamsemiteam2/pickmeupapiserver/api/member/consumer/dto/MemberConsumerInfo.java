package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.MemberRoles;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.util.Date;

// 사용자 정보 조회 결과 전달용
@Data
@AllArgsConstructor
@Builder
public class MemberConsumerInfo {
    private String role;
    private Long id;
    private String email;
    private String name;
    private int level;
    private String address1;
    private String address2;
    private String eupmyundongCode;
    private String contact;
    private Integer unreadNotiCount;
    private int totalBuyCount;
    private Long totalBuyCost;
    private Date lastAccessTime;
    private Date denyTime;
    private Date regTime;

    public static MemberConsumerInfo fromEntity(MemberConsumer entity) {
        if (entity == null) {
            return null;
        }
        return builder()
                .role(MemberRoles.CONSUMER)
                .id(entity.getId())
                .email(entity.getEmail())
                .name(entity.getName())
                .level(entity.getLevel())
                .address1(entity.getAddress().getAddress1())
                .address2(entity.getAddress().getAddress2())
                .eupmyundongCode(entity.getAddress().getEupmyundongCode())
                .contact(entity.getContact())
                .unreadNotiCount(entity.getUnreadNotiCount())
                .totalBuyCount(entity.getTotalBuyCount())
                .totalBuyCost(entity.getTotalBuyCost())
                .lastAccessTime(entity.getLastAccessTime())
                .denyTime(entity.getDenyTime())
                .regTime(entity.getRegTime())
                .build();
    }
}
