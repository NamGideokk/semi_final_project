package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.dto;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigInteger;

@Getter
@Setter
@NoArgsConstructor
public class ReviewAddReq {
    private BigInteger orderId;

    private String content;

    private MultipartFile[] images;

    private double reviewPoint;
}
