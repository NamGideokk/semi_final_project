package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigInteger;

@Getter
@Setter
@NoArgsConstructor
public class ReviewReplyAddReq {
    private BigInteger reviewId;

    private String content;
}
