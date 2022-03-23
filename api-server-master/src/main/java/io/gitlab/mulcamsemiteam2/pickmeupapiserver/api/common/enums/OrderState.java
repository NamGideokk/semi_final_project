package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

import java.util.Arrays;
import java.util.Map;
import java.util.stream.Collectors;

public enum OrderState {
    // 상품 준비 상태 : 0, 상품 준비 완료 : 10, 상품 픽업 완료 : 20, 상품 취소 : 30, 거래 완료 : 40
    PRODUCT_WAITING(0),
    PRODUCT_READY(10),
    PRODUCT_RECEIVED(20),
    ORDER_CANCELED(30),
    ORDER_COMPLETE(100);

    private static final Map<Integer, OrderState> intToEnum =
            Arrays.stream(values()).collect(Collectors.toMap(OrderState::getCode, e -> e));

    @Getter
    @JsonValue
    private final Integer code;

    private OrderState(int code)
    {
        this.code = code;
    }

    public static OrderState fromCode(int code) {
        OrderState result = intToEnum.get(code);
        return result;
    }
}