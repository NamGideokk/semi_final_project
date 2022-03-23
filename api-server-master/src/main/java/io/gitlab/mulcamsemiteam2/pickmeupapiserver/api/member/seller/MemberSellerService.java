package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto.MemberSellerChangeReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto.MemberSellerDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto.MemberSellerInfo;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.MemberSeller;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.entity.SellerAvailableArea;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.entity.Address;
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
import java.util.stream.Collectors;

@Service("memberSellerService")
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class MemberSellerService implements UserDetailsService {

    private final MemberSellerRepositoy memberSellerRepositoy;

    private final AreaEupmyundongService eupmyundongService;

    /**NotValidateDuplicate
     * 회원가입
     */
    @Transactional
    public Boolean join(MemberSellerDto dto) throws NoSuchAlgorithmException {
        MemberSeller seller = MemberSeller.builder()
                .email(dto.getEmail())
                .pwd(new byte[0])
                .name(dto.getName())
                .address(new Address(dto.getAddress1(),dto.getAddress2(),dto.getEupmyundongCode()))
                .teleContact(dto.getContact())
                .companyClassification(dto.getCompanyClass())
                .companyName(dto.getCompanyName())
                .companyCode(dto.getCompanyCode())
                .ownerName(dto.getCompanyOwnerName())
                .build();

        memberSellerRepositoy.save(seller);
        seller.setSellerAvailableAreas(
                dto.getAvailableAreaCodes().stream().map(
                        (code) -> {
                            return SellerAvailableArea.builder()
                                    .memberSeller(seller)
                                    .areaEupmyundong(eupmyundongService.getEupmyundong(code))
                                    .build();
                        }).collect(Collectors.toList()));
        byte[] encryptPassword = PasswordUtil.genDigest(dto.getPwd(), seller.getRegTime());
        seller.setPwd(encryptPassword);
        return true;
    }


    /**
     * 중복회원 조회
     */
    public boolean validateDuplicateEmail(String email) {
        List<MemberSeller> findMembers = memberSellerRepositoy.findByEmail(email);
        if(!findMembers.isEmpty()) {
            return false; // 회원가입 불가. 중복회원
        } else {
            return true;
        }
    }

    public boolean validateDuplicateName(String name) {
        List<MemberSeller> findMembers = memberSellerRepositoy.findByName(name);
        if(!findMembers.isEmpty()) {
            return false; // 회원가입 불가. 중복회원
        } else {
            return true;
        }
    }
    public MemberSellerInfo getUserInfo(long id) {
        return MemberSellerInfo.fromEntity(memberSellerRepositoy.findOne(id));
    }

    @Transactional
    public boolean changeMemberInfo(Long id, MemberSellerChangeReq dto) throws NoSuchAlgorithmException {
        MemberSeller seller = memberSellerRepositoy.findOne(id);

        byte[] checkDigest = PasswordUtil.genDigest(dto.getCheckPwd(), seller.getRegTime());

        if(!PasswordUtil.compare(checkDigest, seller.getPwd())) {
            return false; // 패스워드가 올바르지 않음
        }

        seller.setEmail(dto.getEmail());
        seller.setPwd(PasswordUtil.genDigest(dto.getPwd(), seller.getRegTime()));
        seller.setAddress(new Address(dto.getAddress1(), dto.getAddress2(), dto.getEupmyundongCode()));
        seller.setTeleContact(dto.getContact());
        seller.getSellerAvailableAreas().clear();
        memberSellerRepositoy.flush();
        seller.getSellerAvailableAreas().addAll(
                dto.getAvailableAreaCodes().stream().map(
                        (code) -> {
                            return SellerAvailableArea.builder()
                                    .memberSeller(seller)
                                    .areaEupmyundong(eupmyundongService.getEupmyundong(code))
                                    .build();
                        }).collect(Collectors.toList()));
        return true;
    }

    @Transactional
    public boolean removeMember(Long id, String pwd) throws NoSuchAlgorithmException {
        MemberSeller seller = memberSellerRepositoy.findOne(id);

        byte[] checkDigest = PasswordUtil.genDigest(pwd, seller.getRegTime());
        if(!PasswordUtil.compare(checkDigest, seller.getPwd())) {
            return false; // 패스워드가 올바르지 않음
        }
        seller.getSalesProductList().clear();
        memberSellerRepositoy.flush();
        memberSellerRepositoy.deleteOne(seller);
        return true;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        List<MemberSeller> findMembers = memberSellerRepositoy.findByEmail(username);
        if (findMembers == null || findMembers.isEmpty()) {
            return null;
        }
        return findMembers.get(0);
    }

}
