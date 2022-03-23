package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.NotificationConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.MemberType;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.enums.ResourceType;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;

import java.math.BigInteger;
import java.util.Date;

@Data
@AllArgsConstructor
@Builder
public class NotificationConsumerInfo {

    private BigInteger id;
    private String message;
    private ResourceType targetType;
    private BigInteger targetId;
    private MemberType sourceType;
    private Long sourceId;
    private Date regTime;

    public static NotificationConsumerInfo fromEntity(NotificationConsumer entity) {
        if (entity == null) {
            return null;
        }
        return builder()
                .id(entity.getId())
                .message(entity.getMessage())
                .targetType(entity.getTargetType())
                .targetId(entity.getTargetId())
                .sourceType(entity.getSourceType())
                .sourceId(entity.getSourceId())
                .regTime(entity.getRegTime())
                .build();
    }
}
