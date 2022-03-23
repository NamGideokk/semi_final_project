package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

import java.util.Arrays;
import java.util.Map;
import java.util.stream.Collectors;

public enum MemberType {
    ADMIN(1),
    CONSUMER(2),
    SELLER(3);

    private static final Map<Integer, MemberType> intToEnum =
            Arrays.stream(values()).collect(Collectors.toMap(MemberType::getCode, e -> e));

    @Getter
    @JsonValue
    private final Integer code;

    private MemberType(int code)
    {
        this.code = code;
    }

    public static MemberType fromCode(int code) {
        MemberType result = intToEnum.get(code);
        return result;
    }
}