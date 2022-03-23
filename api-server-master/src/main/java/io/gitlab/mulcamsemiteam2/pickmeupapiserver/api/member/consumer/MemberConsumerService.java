package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto.MemberConsumerChangeReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto.MemberConsumerDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto.MemberConsumerInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.entity.Address;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.authProvider.PasswordUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.security.NoSuchAlgorithmException;
import java.util.List;


@Service("memberConsumerService")
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class MemberConsumerService implements UserDetailsService {

    private final MemberConsumerRepositoy memberConsumerRepositoy ;

    /**NotValidateDuplicate
     * 회원가입
     */
    @Transactional
    public Boolean join(MemberConsumerDto dto) throws NoSuchAlgorithmException {
        MemberConsumer consumer = MemberConsumer.builder()
                .email(dto.getEmail())
                .pwd(new byte[0])
                .name(dto.getName())
                .address(new Address(dto.getAddress1(),dto.getAddress2(),dto.getEupmyundongCode()))
                .contact(dto.getContact())
                .build();

        memberConsumerRepositoy.save(consumer);
        byte[] encryptPassword = PasswordUtil.genDigest(dto.getPwd(), consumer.getRegTime());
        consumer.setPwd(encryptPassword);
        return true;
    }


    /**
     * 중복회원 조회
     */
    public boolean validateDuplicateMember(String email) {
        List<MemberConsumer> findMembers = memberConsumerRepositoy.findByEmail(email);
        if(!findMembers.isEmpty()) {
            return false; // 회원가입 불가. 중복회원
        } else {
            return true;
        }
    }

    /**
     * 회원수정
     */
//    @Transactional
//    public int memberConsumerUpdate(long id, String password) {
//        MemberConsumer memberConsumer = memberConsumerRepositoy.updateUser(id, password);
//        if(memberConsumer == null) {
//            return 1; //수정 실패
//        } else {
//            memberConsumer.setEmail(password);
//            return 0; //수정 성공
//        }
//    }


    public MemberConsumerInfo getUserInfo(long id) {
        return MemberConsumerInfo.fromEntity(memberConsumerRepositoy.findOne(id));
    }

    @Transactional
    public boolean changeMemberInfo(Long id, MemberConsumerChangeReq dto) throws NoSuchAlgorithmException {
        MemberConsumer consumer = memberConsumerRepositoy.findOne(id);

        byte[] checkDigest = PasswordUtil.genDigest(dto.getCheckPwd(), consumer.getRegTime());
        if(!PasswordUtil.compare(checkDigest, consumer.getPwd())) {
            return false; // 패스워드가 올바르지 않음
        }

        consumer.setEmail(dto.getEmail());
        consumer.setPwd(PasswordUtil.genDigest(dto.getPwd(), consumer.getRegTime()));
        consumer.setAddress(new Address(dto.getAddress1(), dto.getAddress2(), dto.getEupmyundongCode()));
        consumer.setContact(dto.getContact());
        return true;
    }

    @Transactional
    public boolean removeMember(Long id, String pwd) throws NoSuchAlgorithmException {
        MemberConsumer consumer = memberConsumerRepositoy.findOne(id);

        byte[] checkDigest = PasswordUtil.genDigest(pwd, consumer.getRegTime());
        if(!PasswordUtil.compare(checkDigest, consumer.getPwd())) {
            return false; // 패스워드가 올바르지 않음
        }
        memberConsumerRepositoy.deleteOne(consumer);
        return true;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<MemberConsumer> findMembers = memberConsumerRepositoy.findByEmail(username);
        if (findMembers == null || findMembers.isEmpty()) {
            return null;
        }
        return findMembers.get(0);
    }
}

