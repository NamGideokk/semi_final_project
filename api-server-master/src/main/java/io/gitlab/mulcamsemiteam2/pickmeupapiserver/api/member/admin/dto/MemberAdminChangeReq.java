package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class MemberAdminChangeReq {
    private String checkPwd;
    private String email;
    private String pwd;
    private String contact;
}