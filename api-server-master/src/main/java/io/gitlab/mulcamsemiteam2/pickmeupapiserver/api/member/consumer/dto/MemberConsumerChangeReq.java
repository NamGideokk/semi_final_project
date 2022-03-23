package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

@Data
@AllArgsConstructor
@Builder
public class MemberConsumerChangeReq {
    private String checkPwd;
    private String email;
    private String pwd;
    private String contact;
    private String address1;
    private String address2;
    private String eupmyundongCode;
}