package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply = true)
public class OrderStateConverter implements AttributeConverter<OrderState, Integer> {
    @Override
    public Integer convertToDatabaseColumn(OrderState orderState) {
        if (orderState == null) {
            return null;
        }
        return orderState.getCode();
    }

    @Override
    public OrderState convertToEntityAttribute(Integer integer) {
        if(integer == null) {
            return null;
        }
        return OrderState.fromCode(integer);
    }
}
