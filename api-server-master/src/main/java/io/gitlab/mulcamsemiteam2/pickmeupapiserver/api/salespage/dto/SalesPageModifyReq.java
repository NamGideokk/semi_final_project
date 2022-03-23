package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.salespage.dto;

import lombok.Data;

import java.math.BigInteger;

@Data
public class SalesPageModifyReq {

    private String name;

    private String content;

    private BigInteger[] productList;
}
