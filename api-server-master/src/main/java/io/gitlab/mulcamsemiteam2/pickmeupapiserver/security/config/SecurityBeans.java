package io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.config;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.authProvider.AdminAuthenticationProvider;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.authProvider.ConsumerAuthenticationProvider;
import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.authProvider.SellerAuthenticationProvider;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

@Configuration
public class SecurityBeans {

  @Bean
  public AuthenticationProvider adminAuthProvider() {
    return new AdminAuthenticationProvider();
  }

  @Bean
  public AuthenticationProvider sellerAuthProvider() {
    return new SellerAuthenticationProvider();
  }

  @Bean
  public AuthenticationProvider consumerAuthProvider() {
    return new ConsumerAuthenticationProvider();
  }

  @Bean
  public CorsConfigurationSource corsConfigurationSource() {
    CorsConfiguration configuration = new CorsConfiguration();

    // 프론트엔드의 주소를 여기에 추가해주어야 통신이 가능하다.
    configuration.addAllowedOrigin("http://front.pickmeup.com:8080");
    configuration.addAllowedOrigin("http://front.pickmeup.com:8081");
    configuration.addAllowedOrigin("http://front.pickmeup.com:3000");
    configuration.addAllowedMethod("*");
    configuration.addAllowedHeader("*");
    configuration.setAllowCredentials(true);
//    configuration.setMaxAge(3600L); // pre-flight 요청을 캐시해 둘 시간

    UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
    source.registerCorsConfiguration("/**", configuration);
    return source;
  }
}
