package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply = true)
public class MemberTypeConverter implements AttributeConverter<MemberType, Integer> {
    @Override
    public Integer convertToDatabaseColumn(MemberType memberType) {
        if (memberType == null) {
            return null;
        }
        return memberType.getCode();
    }

    @Override
    public MemberType convertToEntityAttribute(Integer integer) {
        if(integer == null) {
            return null;
        }
        return MemberType.fromCode(integer);
    }
}
