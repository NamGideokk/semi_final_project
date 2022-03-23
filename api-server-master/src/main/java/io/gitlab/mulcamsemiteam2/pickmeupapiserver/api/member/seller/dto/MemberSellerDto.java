package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
public class MemberSellerDto {
        private String email;
        private String pwd;
        private String name;
        private String address1;
        private String address2;
        private String eupmyundongCode;
        private String contact;
        private int companyClass;
        private String companyCode;
        private String companyName;
        private String companyOwnerName;
        private List<String> availableAreaCodes;
}


