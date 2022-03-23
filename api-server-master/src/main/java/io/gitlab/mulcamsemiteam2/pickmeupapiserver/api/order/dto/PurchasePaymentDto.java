package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.dto;


import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.order.entity.PurchasePayment;
import lombok.*;

import java.math.BigInteger;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class PurchasePaymentDto {
    private Date paymentTime;
    private BigInteger purchasePaymentId;
    private List<OrderSimpleDto> orders;

    public static PurchasePaymentDto fromEntity(PurchasePayment entity) {
        if (entity == null) {
            return null;
        }
        return builder()
                .paymentTime(entity.getPaymentTime())
                .purchasePaymentId(entity.getId())
                .orders(entity.getOrderList() == null
                        ? null
                        : entity.getOrderList().stream()
                        .map(v -> {
                             return OrderSimpleDto.fromEntity(v);
                        }).collect(Collectors.toList()))
                .build();
    }
}
