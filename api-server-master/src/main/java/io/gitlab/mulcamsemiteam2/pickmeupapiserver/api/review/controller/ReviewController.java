package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.controller;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.BadRequestException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.ForbiddenException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.dto.ReviewAddReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.dto.ReviewInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.service.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.*;

import java.math.BigInteger;
import java.util.List;

@RestController
@RequestMapping("/api")
public class ReviewController {
    @Autowired
    private ReviewService reviewService;

    @PostMapping("/consumer/review")
    public ResponseEntity postReview(
            Authentication authentication,
            @ModelAttribute ReviewAddReq reqdata
    ) {
        try {
            reviewService.addReview((Long) authentication.getPrincipal(), reqdata);
            return new ResponseEntity(HttpStatus.CREATED);
        } catch (BadRequestException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.BAD_REQUEST);
        } catch (ForbiddenException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.FORBIDDEN);
        }
    }

    @GetMapping("/review/search")
    public ResponseEntity getReview(
            @PageableDefault(size = 20, sort = "id", direction = Sort.Direction.DESC, page = 0) Pageable pageable,
            @RequestParam(value = "sellerId", required = false) Long sellerId,
            @RequestParam(value = "writerId", required = false) Long writerId,
            @RequestParam(value = "salesPageId", required = false) BigInteger salesPageId
    ) {
        List<ReviewInfo> review = reviewService.searchReviewList(pageable, sellerId, writerId, salesPageId);
        return new ResponseEntity(review, HttpStatus.OK);
    }
}