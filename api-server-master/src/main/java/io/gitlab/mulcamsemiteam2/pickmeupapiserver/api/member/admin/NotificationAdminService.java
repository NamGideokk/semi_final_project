package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.dto.NotificationAdminInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.entity.NotificationAdmin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigInteger;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Transactional(readOnly = true)
public class NotificationAdminService {

    @Autowired private NotificationAdminRepository notificationAdminRepository;
    @Autowired private MemberAdminRepositoy memberAdminRepositoy;

    @Transactional
    public List<NotificationAdminInfo> getNotificationList(Long userId, Pageable pageable) {
        List<NotificationAdmin> notiList = notificationAdminRepository.findByMemberAdmin_Id(userId, pageable);
        memberAdminRepositoy.findOne(userId).setUnreadNotiCount(0);

        return notiList.stream().map(NotificationAdminInfo::fromEntity).collect(Collectors.toList());
    }

    @Transactional
    public boolean deleteOne(Long userId, BigInteger id) {
        NotificationAdmin noti = notificationAdminRepository.findById(id).get();
        if(!noti.getMemberAdmin().getId().equals(userId)) {
            return false;
        }
        notificationAdminRepository.deleteById(id);
        return true;
    }

    @Transactional
    public void deleteAll(Long userId) {
        notificationAdminRepository.deleteByMemberAdmin_Id(userId);
        memberAdminRepositoy.findOne(userId).setUnreadNotiCount(0);
    }
}
