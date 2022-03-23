package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.repository;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.entity.ReviewReply;
import org.springframework.data.jpa.repository.JpaRepository;

import java.math.BigInteger;

public interface ReviewReplyRepository extends JpaRepository<ReviewReply, BigInteger> {
}
