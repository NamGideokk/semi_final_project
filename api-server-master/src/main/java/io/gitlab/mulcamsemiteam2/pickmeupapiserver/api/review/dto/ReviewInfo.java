package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.dto;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto.MemberConsumerInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity.Review;
import lombok.*;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReviewInfo {

    private BigInteger id;

    private MemberConsumerInfo writer;

    private String productName;

    private String content;

    private List<String> images;

    private Double reviewPoint;

    private Date regTime;

    private ReviewReplyInfo reply;

    public static ReviewInfo fromEntity(Review entity) {
        if (entity == null) {
            return null;
        }
        return ReviewInfo.builder()
                .id(entity.getId())
                .writer(MemberConsumerInfo.fromEntity(entity.getMemberConsumer()))
                .productName(entity.getProductName())
                .content(entity.getContent())
                .images(entity.getImages() == null || entity.getImages().isEmpty()
                        ? new ArrayList<>()
                        : Arrays.stream(entity.getImages().split(","))
                        .map(v -> {
                            return "/public/upload/review/" + entity.getId() + "/" + v;
                        }).collect(Collectors.toList()))
                .reviewPoint(entity.getReviewPoint())
                .regTime(entity.getRegTime())
                .reply(ReviewReplyInfo.fromEntity(entity.getReviewReply()))
                .build();
    }
}
