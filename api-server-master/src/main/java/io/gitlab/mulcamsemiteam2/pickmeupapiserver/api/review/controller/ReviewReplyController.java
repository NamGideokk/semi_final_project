package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.controller;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.BadRequestException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.errorhandling.ForbiddenException;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.dto.ReviewReplyAddReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.review.service.ReviewReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class ReviewReplyController {
    @Autowired
    private ReviewReplyService reviewReplyService;

    @PostMapping("/seller/reviewReply")
    public ResponseEntity postReview(
            Authentication authentication,
            @ModelAttribute ReviewReplyAddReq reqdata
    ) {
        try {
            reviewReplyService.addReviewReply((Long) authentication.getPrincipal(), reqdata);
            return new ResponseEntity(HttpStatus.CREATED);
        } catch (BadRequestException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.BAD_REQUEST);
        } catch (ForbiddenException e) {
            return new ResponseEntity(e.getMessage(), HttpStatus.FORBIDDEN);
        }
    }
}