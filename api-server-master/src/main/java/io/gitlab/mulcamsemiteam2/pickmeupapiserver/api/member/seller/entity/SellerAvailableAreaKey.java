package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity;

import java.io.Serializable;

public class SellerAvailableAreaKey implements Serializable {
    private Long memberSeller;
    private String areaEupmyundong;

    public SellerAvailableAreaKey() { }
    public SellerAvailableAreaKey(Long memberSeller, String areaEupmyundong) {
        this.memberSeller = memberSeller;
        this.areaEupmyundong = areaEupmyundong;
    }
}
