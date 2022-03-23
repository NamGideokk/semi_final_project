package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto.MemberSellerChangeReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto.MemberSellerDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.seller.dto.MemberSellerInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.security.NoSuchAlgorithmException;

@RestController
public class MemberSellerController {

    @Autowired
    private MemberSellerService memberSellerService;
    /**
     * 회원가입
     */
    @PostMapping("/api/seller/signup")
    public ResponseEntity join(@RequestBody MemberSellerDto dto) throws NoSuchAlgorithmException {
        boolean result = memberSellerService.join(dto);
        return new ResponseEntity(result, HttpStatus.OK);
    }

    // 셀러 기본 정보 변경. 자기 자신 정보만 변경 가능
    @PutMapping("/api/seller")
    public ResponseEntity changeInfo(
            Authentication authentication,
            @RequestBody MemberSellerChangeReq dto
    ) throws NoSuchAlgorithmException {
        if(memberSellerService.changeMemberInfo((Long) authentication.getPrincipal(), dto)) {
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity(HttpStatus.UNAUTHORIZED);
    }
    /**
     * 중복체크
     */
    @GetMapping("/api/public/seller/duplicateCheck")
    public ResponseEntity duplicateCheck(
            @RequestParam(value = "email", required = false) String userEmail,
            @RequestParam(value = "name", required = false) String userName
    ) {
        if (userEmail == null && userName == null) {
            return new ResponseEntity("중복 확인할 이메일이나 이름을 입력해주세요.", HttpStatus.BAD_REQUEST);
        }
        if (userEmail != null) {
            if(userEmail.isEmpty()) {
                return new ResponseEntity("이메일은 빈 문자열일 수 없습니다.", HttpStatus.BAD_REQUEST);
            } else if (!memberSellerService.validateDuplicateEmail(userEmail)) {
                return new ResponseEntity(false, HttpStatus.OK);
            }
        }
        if (userName != null) {
            if(userName.isEmpty()) {
                return new ResponseEntity("이름은 빈 문자열일 수 없습니다.", HttpStatus.BAD_REQUEST);
            } else if (!memberSellerService.validateDuplicateName(userName)) {
                return new ResponseEntity(false, HttpStatus.OK);
            }
        }
        return new ResponseEntity(true, HttpStatus.OK);
    }

    // 셀러 기본 계정 삭제. 본인만 삭제 가능
    @DeleteMapping("/api/seller")
    public ResponseEntity changeInfo(
            Authentication authentication,
            @RequestHeader("pwd") String pwd
    ) throws NoSuchAlgorithmException {
        if(memberSellerService.removeMember((Long) authentication.getPrincipal(), pwd)) {
            SecurityContextHolder.getContext().setAuthentication(null);
            SecurityContextHolder.clearContext();
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity(HttpStatus.UNAUTHORIZED);
    }

    // 셀러 정보 조회용 누구나 접근 가능
    @GetMapping("/api/public/seller/{id}")
    public MemberSellerInfo info(@PathVariable("id") Long id) {
        return memberSellerService.getUserInfo(id);
    }
}
