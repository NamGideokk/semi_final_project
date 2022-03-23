package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.dto;

import lombok.Getter;
import lombok.Setter;

import java.math.BigInteger;

@Setter
@Getter
public class SellerPageOrderDto {
    private int paymentMethod;
    private String paymentDetailsJson;
    private String receiverComment;
    private String receiverContact;
    private String receiverName;
    private BigInteger salesProductId;
    private int qty;
}
