package io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.common.entity.Address;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto.MemberConsumerChangeReq;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.dto.MemberConsumerDto;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.api.member.consumer.entity.MemberConsumer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.security.NoSuchAlgorithmException;

@RestController
public class MemberConsumerController {

    @Autowired
    private MemberConsumerService memberConsumerService;


    /**
     * 회원가입
     */
    @PostMapping("/api/consumer/signup")
    public ResponseEntity join(@RequestBody MemberConsumerDto dto) throws NoSuchAlgorithmException {
        boolean result = memberConsumerService.join(dto);
        return new ResponseEntity(result, HttpStatus.OK);
    }

    /**
     * 중복체크
     */
    @GetMapping("/api/public/consumer/duplicateCheck")
    public ResponseEntity duplicateCheck(@RequestParam(value = "email") String userEmail) {
        if(userEmail.isEmpty()) {
            return new ResponseEntity("이메일은 빈 문자열일 수 없습니다.", HttpStatus.BAD_REQUEST);
        }
        boolean check = memberConsumerService.validateDuplicateMember(userEmail);
        return new ResponseEntity(check, HttpStatus.OK);
    }




    // 사용자 기본 정보 변경. 자기 자신 정보만 변경 가능
    @PutMapping("/api/consumer")
    public ResponseEntity changeInfo(
            Authentication authentication,
            @RequestBody MemberConsumerChangeReq dto
    ) throws NoSuchAlgorithmException {
        if(memberConsumerService.changeMemberInfo((Long) authentication.getPrincipal(), dto)) {
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity(HttpStatus.UNAUTHORIZED);
    }

    // 사용자 계정 삭제. 본인만 삭제 가능
    @DeleteMapping("/api/consumer")
    public ResponseEntity changeInfo(
            Authentication authentication,
            @RequestHeader("pwd") String pwd
    ) throws NoSuchAlgorithmException {
        if(memberConsumerService.removeMember((Long) authentication.getPrincipal(), pwd)) {
            SecurityContextHolder.getContext().setAuthentication(null);
            SecurityContextHolder.clearContext();
            return new ResponseEntity(HttpStatus.OK);
        }
        return new ResponseEntity(HttpStatus.UNAUTHORIZED);
    }

    private MemberConsumer createMemberCousumer(MemberConsumerDto memberConsumerDto) {
        MemberConsumer memberConsumer = new MemberConsumer();
        memberConsumer.setAddress(new Address(memberConsumerDto.getAddress1(), memberConsumerDto.getAddress2(), memberConsumerDto.getEupmyundongCode()));
        memberConsumer.setContact(memberConsumerDto.getContact());
        memberConsumer.setEmail(memberConsumerDto.getEmail());
        memberConsumer.setName(memberConsumerDto.getName());
        memberConsumer.setPwd(new byte[0]);
        return memberConsumer;
    }

}
