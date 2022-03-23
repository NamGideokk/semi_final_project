package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.entity.MemberAdmin;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.MemberRoles;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.util.Date;

// 사용자 정보 조회 결과 전달용
@Data
@AllArgsConstructor
@Builder
public class MemberAdminInfo {
    private String role;
    private Long id;
    private String email;
    private String name;
    private String contact;
    private Integer unreadNotiCount;
    private Date lastAccessTime;
    private Date regTime;

    public static MemberAdminInfo fromEntity(MemberAdmin entity) {
        if (entity == null) {
            return null;
        }
        return builder()
                .role(MemberRoles.ADMIN)
                .id(entity.getId())
                .email(entity.getEmail())
                .name(entity.getName())
                .contact(entity.getContact())
                .unreadNotiCount(entity.getUnreadNotiCount())
                .lastAccessTime(entity.getLastAccessTime())
                .regTime(entity.getRegTime())
                .build();
    }
}
