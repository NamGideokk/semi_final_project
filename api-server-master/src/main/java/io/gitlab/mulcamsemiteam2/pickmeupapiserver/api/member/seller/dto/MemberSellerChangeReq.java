package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto;

import lombok.*;

import java.util.List;

@Data
@AllArgsConstructor
@Builder
public class MemberSellerChangeReq {
    private String checkPwd;
    private String email;
    private String pwd;
    private String address1;
    private String address2;
    private String eupmyundongCode;
    private String contact;
    private List<String> availableAreaCodes;
}