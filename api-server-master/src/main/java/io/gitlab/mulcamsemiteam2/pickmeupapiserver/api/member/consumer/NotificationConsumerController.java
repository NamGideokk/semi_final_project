package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto.NotificationConsumerInfo;
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
public class NotificationConsumerController {

    @Autowired
    private NotificationConsumerService notificationConsumerService;

    // 알림 삭제. 본인만 삭제 가능
    @DeleteMapping("/api/consumer/noti/{id}")
    public ResponseEntity deleteOne(
            Authentication authentication,
            @PathVariable("id") BigInteger id
    ) {
        try {
            if(notificationConsumerService.deleteOne((Long) authentication.getPrincipal(), id)) {
                return new ResponseEntity(HttpStatus.OK);
            }
            return new ResponseEntity(HttpStatus.FORBIDDEN);
        } catch (NoSuchElementException e) {
            return new ResponseEntity(HttpStatus.NOT_FOUND);
        }
    }

    // 모든 알림 삭제. 본인만 삭제 가능
    @DeleteMapping("/api/consumer/noti/all")
    public ResponseEntity deleteAll(Authentication authentication) {
        notificationConsumerService.deleteAll((Long) authentication.getPrincipal());
        return new ResponseEntity(HttpStatus.OK);
    }

    // 알림 목록 조회. 본인거만 조회 가능
    @GetMapping("/api/consumer/noti/list")
    public List<NotificationConsumerInfo> getNotiList(
            Authentication authentication,
            @PageableDefault(size=20, page = 0, sort="id", direction = Sort.Direction.DESC) Pageable pageable
    ) {
        return notificationConsumerService.getNotificationList((Long) authentication.getPrincipal(), pageable);
    }
}
