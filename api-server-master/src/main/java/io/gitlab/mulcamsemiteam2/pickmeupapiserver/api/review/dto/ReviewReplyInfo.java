package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto.MemberSellerInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity.ReviewReply;
import lombok.*;

import java.math.BigInteger;
import java.util.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReviewReplyInfo {

    private BigInteger id;

    private MemberSellerInfo writer;

    private String content;

    private Date regTime;

    public static ReviewReplyInfo fromEntity(ReviewReply entity) {
        if (entity == null) {
            return null;
        }
        return ReviewReplyInfo.builder()
                .id(entity.getId())
                .writer(MemberSellerInfo.fromEntity(entity.getMemberSeller()))
                .content(entity.getContent())
                .regTime(entity.getRegTime())
                .build();
    }
}
