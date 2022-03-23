package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class MemberAdminAddReq {
        private String email;
        private String pwd;
        private String name;
        private String contact;
}


