package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class MemberConsumerDto {
    private String address1;
    private String address2;
    private String eupmyundongCode;
    private String email;
    private String pwd;
    private String name;
    private String contact;
}
