package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.dto;

import lombok.Getter;
import lombok.Setter;

import java.math.BigInteger;
import java.util.List;

@Getter
@Setter
public class CartOrderDto {
    private int paymentMethod;
    private String paymentDetailsJson;
    private String receiverComment;
    private String receiverContact;
    private String receiverName;
    private List<BigInteger> cartId;
}
