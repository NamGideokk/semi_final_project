package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto.NotificationSellerInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.NotificationSeller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional(readOnly = true)
public class NotificationSellerService {

    @Autowired private NotificationSellerRepository notificationSellerRepository;
    @Autowired private MemberSellerRepositoy memberSellerRepositoy;

    @Transactional
    public List<NotificationSellerInfo> getNotificationList(Long userId, Pageable pageable) {
        List<NotificationSeller> notiList = notificationSellerRepository.findByMemberSeller_Id(userId, pageable);
        memberSellerRepositoy.findOne(userId).setUnreadNotiCount(0);

        return notiList.stream().map(NotificationSellerInfo::fromEntity).collect(Collectors.toList());
    }

    @Transactional
    public boolean deleteOne(Long userId, BigInteger id) {
        NotificationSeller noti = notificationSellerRepository.findById(id).get();
        if(!noti.getMemberSeller().getId().equals(userId)) {
            return false;
        }
        notificationSellerRepository.deleteById(id);
        return true;
    }

    @Transactional
    public void deleteAll(Long userId) {
        notificationSellerRepository.deleteByMemberSeller_Id(userId);
        memberSellerRepositoy.findOne(userId).setUnreadNotiCount(0);
    }
}
