package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

import java.util.Arrays;
import java.util.Map;
import java.util.stream.Collectors;

public enum ResourceType {
    ORDER(1),
    REVIEW(2),
    PRODUCT(3),
    SALES_PAGE(4),
    SALES_PRODUCT(5),
    PURCHASE_PAYMENT(6);

    private static final Map<Integer, ResourceType> intToEnum =
            Arrays.stream(values()).collect(Collectors.toMap(ResourceType::getCode, e -> e));

    @Getter
    @JsonValue
    private final Integer code;

    private ResourceType(int code)
    {
        this.code = code;
    }

    public static ResourceType fromCode(int code) {
        ResourceType result = intToEnum.get(code);
        return result;
    }
}