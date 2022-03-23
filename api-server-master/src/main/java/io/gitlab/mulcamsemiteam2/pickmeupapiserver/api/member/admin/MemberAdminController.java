package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.dto.MemberAdminAddReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.dto.MemberAdminChangeReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.admin.dto.MemberAdminInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.security.NoSuchAlgorithmException;

@RestController
public class MemberAdminController {

    @Autowired
    private MemberAdminService memberAdminService;
    /**
     * admin 계정 추가. 관리자 권한 필요
     */
    @PostMapping("/api/admin")
    public ResponseEntity addAdminMember(@RequestBody MemberAdminAddReq dto) throws NoSuchAlgorithmException {
        boolean result = memberAdminService.join(dto);
        return new ResponseEntity(result, HttpStatus.OK);
    }

    // 기본 정보 변경. 자기 자신 정보만 변경 가능
    @PutMapping("/api/admin")
    public ResponseEntity changeInfo(
            Authentication authentication,
            @RequestBody MemberAdminChangeReq dto
    ) throws NoSuchAlgorithmException {
        if(memberAdminService.changeMemberInfo((Long) authentication.getPrincipal(), dto)) {
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity(HttpStatus.UNAUTHORIZED);
    }

    // 계정 삭제. 본인만 삭제 가능
    @DeleteMapping("/api/admin")
    public ResponseEntity changeInfo(
            Authentication authentication,
            @RequestHeader("pwd") String pwd
    ) throws NoSuchAlgorithmException {
        if(memberAdminService.removeMember((Long) authentication.getPrincipal(), pwd)) {
            SecurityContextHolder.getContext().setAuthentication(null);
            SecurityContextHolder.clearContext();
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity(HttpStatus.UNAUTHORIZED);
    }

    // 관리자 정보 조회용 누구나 접근 가능
    @GetMapping("/api/public/admin/{id}")
    public MemberAdminInfo info(@PathVariable("id") Long id) {
        return memberAdminService.getUserInfo(id);
    }
}
