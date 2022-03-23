package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.dto.MemberAdminAddReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.dto.MemberAdminChangeReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.dto.MemberAdminInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.entity.MemberAdmin;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.area.eupmyundong.AreaEupmyundongService;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.authProvider.PasswordUtil;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.security.NoSuchAlgorithmException;
import java.util.List;

@Service("memberAdminService")
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class MemberAdminService implements UserDetailsService {

    private final MemberAdminRepositoy memberAdminRepositoy;

    private final AreaEupmyundongService eupmyundongService;

    /**NotValidateDuplicate
     * admin 계정 추가. 관리자 권한 필요
     */
    @Transactional
    public Boolean join(MemberAdminAddReq dto) throws NoSuchAlgorithmException {
        MemberAdmin admin = MemberAdmin.builder()
                .email(dto.getEmail())
                .pwd(new byte[0])
                .name(dto.getName())
                .contact(dto.getContact())
                .build();

        memberAdminRepositoy.save(admin);
        byte[] encryptPassword = PasswordUtil.genDigest(dto.getPwd(), admin.getRegTime());
        admin.setPwd(encryptPassword);
        return true;
    }

    public MemberAdminInfo getUserInfo(long id) {
        return MemberAdminInfo.fromEntity(memberAdminRepositoy.findOne(id));
    }

    @Transactional
    public boolean changeMemberInfo(Long id, MemberAdminChangeReq dto) throws NoSuchAlgorithmException {
        MemberAdmin admin = memberAdminRepositoy.findOne(id);

        byte[] checkDigest = PasswordUtil.genDigest(dto.getCheckPwd(), admin.getRegTime());
        if(!PasswordUtil.compare(checkDigest, admin.getPwd())) {
            return false; // 패스워드가 올바르지 않음
        }

        admin.setEmail(dto.getEmail());
        admin.setPwd(PasswordUtil.genDigest(dto.getPwd(), admin.getRegTime()));
        admin.setContact(dto.getContact());
        return true;
    }

    @Transactional
    public boolean removeMember(Long id, String pwd) throws NoSuchAlgorithmException {
        MemberAdmin admin = memberAdminRepositoy.findOne(id);

        byte[] checkDigest = PasswordUtil.genDigest(pwd, admin.getRegTime());
        if(!PasswordUtil.compare(checkDigest, admin.getPwd())) {
            return false; // 패스워드가 올바르지 않음
        }
        memberAdminRepositoy.deleteOne(admin);
        return true;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<MemberAdmin> findMembers = memberAdminRepositoy.findByEmail(username);
        if (findMembers == null || findMembers.isEmpty()) {
            return null;
        }
        return findMembers.get(0);
    }

}
