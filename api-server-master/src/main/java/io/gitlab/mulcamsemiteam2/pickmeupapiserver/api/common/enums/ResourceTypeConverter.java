package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter(autoApply = true)
public class ResourceTypeConverter implements AttributeConverter<ResourceType, Integer> {
    @Override
    public Integer convertToDatabaseColumn(ResourceType resourceType) {
        if (resourceType == null) {
            return null;
        }
        return resourceType.getCode();
    }

    @Override
    public ResourceType convertToEntityAttribute(Integer integer) {
        if(integer == null) {
            return null;
        }
        return ResourceType.fromCode(integer);
    }
}
