package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto.NotificationSellerInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigInteger;
import java.util.List;
import java.util.NoSuchElementException;

@RestController
public class NotificationSellerController {

    @Autowired
    private NotificationSellerService notificationSellerService;

    // 알림 삭제. 본인만 삭제 가능
    @DeleteMapping("/api/seller/noti/{id}")
    public ResponseEntity deleteOne(
            Authentication authentication,
            @PathVariable("id") BigInteger id
    ) {
        try {
            if(notificationSellerService.deleteOne((Long) authentication.getPrincipal(), id)) {
                return new ResponseEntity(HttpStatus.OK);
            }
            return new ResponseEntity(HttpStatus.FORBIDDEN);
        } catch (NoSuchElementException e) {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
    }

    // 모든 알림 삭제. 본인만 삭제 가능
    @DeleteMapping("/api/seller/noti/all")
    public ResponseEntity deleteAll(Authentication authentication) {
        notificationSellerService.deleteAll((Long) authentication.getPrincipal());
        return new ResponseEntity(HttpStatus.OK);
    }

    // 알림 목록 조회. 본인거만 조회 가능
    @GetMapping("/api/seller/noti/list")
    public List<NotificationSellerInfo> getNotiList(
            Authentication authentication,
            @PageableDefault(size=20, page = 0, sort="id", direction = Sort.Direction.DESC) Pageable pageable
    ) {
        return notificationSellerService.getNotificationList((Long) authentication.getPrincipal(), pageable);
    }
}
