package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto.NotificationConsumerInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.NotificationConsumer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional(readOnly = true)
public class NotificationConsumerService {

    @Autowired private NotificationConsumerRepository notificationConsumerRepository;
    @Autowired private MemberConsumerRepositoy memberConsumerRepositoy;

    @Transactional
    public List<NotificationConsumerInfo> getNotificationList(Long userId, Pageable pageable) {
        List<NotificationConsumer> notiList = notificationConsumerRepository.findByMemberConsumer_Id(userId, pageable);
        memberConsumerRepositoy.findOne(userId).setUnreadNotiCount(0);

        return notiList.stream().map(NotificationConsumerInfo::fromEntity).collect(Collectors.toList());
    }

    @Transactional
    public boolean deleteOne(Long userId, BigInteger id) {
        NotificationConsumer noti = notificationConsumerRepository.findById(id).get();
        if(!noti.getMemberConsumer().getId().equals(userId)) {
            return false;
        }
        notificationConsumerRepository.deleteById(id);
        return true;
    }

    @Transactional
    public void deleteAll(Long userId) {
        notificationConsumerRepository.deleteByMemberConsumer_Id(userId);
        memberConsumerRepositoy.findOne(userId).setUnreadNotiCount(0);
    }
}
