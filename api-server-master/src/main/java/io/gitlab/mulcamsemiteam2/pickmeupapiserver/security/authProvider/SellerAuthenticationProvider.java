package io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.authProvider;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.model.CommonMemberSecureInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

import java.security.NoSuchAlgorithmException;

@Component
public class SellerAuthenticationProvider implements AuthenticationProvider {

  @Autowired
  @Qualifier("memberSellerService")
  private UserDetailsService userDetailsService;

  @Override
  public Authentication authenticate(Authentication authentication) throws AuthenticationException {
    String inputName = (String) authentication.getPrincipal();
    String inputPwd = (String) authentication.getCredentials();
    System.out.println(inputPwd);
    try {
      CommonMemberSecureInfo secureInfo = (CommonMemberSecureInfo) userDetailsService.loadUserByUsername(inputName);
      if(secureInfo == null) {
        throw new BadCredentialsException("사용자가 존재하지 않습니다.");
      }
      byte[] inputDigest = PasswordUtil.genDigest(inputPwd, secureInfo.getRegTime());

      if(!PasswordUtil.compare(inputDigest, secureInfo.getPwd())) {
        throw new BadCredentialsException("비밀번호가 일치하지 않습니다.");
      }
      UsernamePasswordAuthenticationToken token =
          new UsernamePasswordAuthenticationToken(
              secureInfo.getId(),
              null,
              secureInfo.getAuthorities());
      return token;
    } catch (NoSuchAlgorithmException e) {
      e.printStackTrace();
      throw new BadCredentialsException("알 수 없는 에러가 발생했습니다.");
    }
  }

  @Override
  public boolean supports(Class<?> authentication) {
    return authentication.equals(UsernamePasswordAuthenticationToken.class);
  }
}