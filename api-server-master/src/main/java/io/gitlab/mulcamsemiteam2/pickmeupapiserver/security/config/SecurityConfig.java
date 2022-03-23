package io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.config;

import io.gitlab.mulcamsemiteam2.pickmeupapiserver.security.MemberRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.HttpStatusEntryPoint;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationFailureHandler;
import org.springframework.security.web.authentication.logout.HttpStatusReturningLogoutSuccessHandler;

@EnableWebSecurity
public class SecurityConfig {

  // Order를 지정하지 않으면 last로 설정됨
  // /seller/**, /admin/**, /api/seller/**, /api/admin/** 외의 경로에 대해 권한 설정
  @Configuration
  public static class ConsumerSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    @Qualifier("consumerAuthProvider")
    AuthenticationProvider authProvider;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
      http
          // 먼저 설정된 url들(아래 Order가 설정된 애들)을 제외한 url에 대한 권한 설정
          .authorizeRequests()
          .antMatchers("/api/consumer/signup").permitAll()
          .antMatchers("/consumer/**", "/api/consumer/**").hasRole(MemberRoles.CONSUMER)
          .antMatchers("/api/myInfo").authenticated()
          .antMatchers("/public/**", "/api/public/**").permitAll()
          .anyRequest().authenticated()

          .and()
          .exceptionHandling()
          // 인증이 안 된 상태일 때, 리다이렉트하지 않고, 401 상태로 응답
          .authenticationEntryPoint(new HttpStatusEntryPoint(HttpStatus.UNAUTHORIZED))

          .and()
          .formLogin()
          .loginPage("/login")
          .usernameParameter("email")
          .passwordParameter("pwd")
          // 로그인 성공시, 리다이렉트하지 않고, 204 상태로 응답
          .successHandler((req, res, auth) -> res.setStatus(HttpStatus.NO_CONTENT.value()))
          // 로그인 실패시, 리다이렉트하지 않고, 401 상태로 응답
          .failureHandler(new SimpleUrlAuthenticationFailureHandler())
          .permitAll()

          .and()
          .logout()
          // 로그아웃 성공시, 리다이렉트하지 않고, 204 상태로 응답
          .logoutSuccessHandler(new HttpStatusReturningLogoutSuccessHandler(HttpStatus.NO_CONTENT))

          .and()
          .csrf().disable()
          .cors();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
      auth.authenticationProvider(authProvider);
    }
  }

  @Configuration
  @Order(1)
  public static class AdminPageSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    @Qualifier("adminAuthProvider")
    AuthenticationProvider authProvider;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
      http
          .antMatcher("/admin/**")
          .authorizeRequests()
          .anyRequest()
          .hasRole(MemberRoles.ADMIN)

          .and()
          .exceptionHandling()
          // 인증이 안 된 상태일 때, 리다이렉트하지 않고, 401 상태로 응답
          .authenticationEntryPoint(new HttpStatusEntryPoint(HttpStatus.UNAUTHORIZED))

          .and()
          .formLogin()
          .loginPage("/admin/login")
          .usernameParameter("email")
          .passwordParameter("pwd")
          // 로그인 성공시, 리다이렉트하지 않고, 204 상태로 응답
          .successHandler((req, res, auth) -> res.setStatus(HttpStatus.NO_CONTENT.value()))
          // 로그인 실패시, 리다이렉트하지 않고, 401 상태로 응답
          .failureHandler(new SimpleUrlAuthenticationFailureHandler())
          .permitAll()

          .and()
          .csrf().disable()
          .cors();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
      auth.authenticationProvider(authProvider);
    }
  }

  @Configuration
  @Order(2)
  public static class AdminApiSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
      http
          .antMatcher("/api/admin/**")
          .authorizeRequests()
          .anyRequest()
          .hasRole(MemberRoles.ADMIN)

          .and()
          .exceptionHandling()
          // 인증이 안 된 상태일 때, 리다이렉트하지 않고, 401 상태로 응답
          .authenticationEntryPoint(new HttpStatusEntryPoint(HttpStatus.UNAUTHORIZED))

          .and()
          .formLogin()
          .loginPage("/admin/login")
          .usernameParameter("email")
          .passwordParameter("pwd")
          // 로그인 성공시, 리다이렉트하지 않고, 204 상태로 응답
          .successHandler((req, res, auth) -> res.setStatus(HttpStatus.NO_CONTENT.value()))
          // 로그인 실패시, 리다이렉트하지 않고, 401 상태로 응답
          .failureHandler(new SimpleUrlAuthenticationFailureHandler())
          .permitAll()

          .and()
          .csrf().disable()
          .cors();
    }
  }

  @Configuration
  @Order(3)
  public static class SellerPageSecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    @Qualifier("sellerAuthProvider")
    AuthenticationProvider authProvider;

    @Override
    protected void configure(HttpSecurity http) throws Exception {
      http
          .antMatcher("/seller/**")
          .authorizeRequests()
          .anyRequest()
          .hasRole(MemberRoles.SELLER)

          .and()
          .exceptionHandling()
          // 인증이 안 된 상태일 때, 리다이렉트하지 않고, 401 상태로 응답
          .authenticationEntryPoint(new HttpStatusEntryPoint(HttpStatus.UNAUTHORIZED))

          .and()
          .formLogin()
          .loginPage("/seller/login")
          .usernameParameter("email")
          .passwordParameter("pwd")
          // 로그인 성공시, 리다이렉트하지 않고, 204 상태로 응답
          .successHandler((req, res, auth) -> res.setStatus(HttpStatus.NO_CONTENT.value()))
          // 로그인 실패시, 리다이렉트하지 않고, 401 상태로 응답
          .failureHandler(new SimpleUrlAuthenticationFailureHandler())
          .permitAll()

          .and()
          .csrf().disable()
          .cors();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
      auth.authenticationProvider(authProvider);
    }
  }

  @Configuration
  @Order(4)
  public static class SellerApiSecurityConfig extends WebSecurityConfigurerAdapter {

    @Override
    protected void configure(HttpSecurity http) throws Exception {
      http
          .antMatcher("/api/seller/**")
          .authorizeRequests()
          .antMatchers("/api/seller/signup").permitAll()
          .anyRequest()
          .hasRole(MemberRoles.SELLER)

          .and()
          .exceptionHandling()
          // 인증이 안 된 상태일 때, 리다이렉트하지 않고, 401 상태로 응답
          .authenticationEntryPoint(new HttpStatusEntryPoint(HttpStatus.UNAUTHORIZED))

          .and()
          .formLogin()
          .loginPage("/seller/login")
          .usernameParameter("email")
          .passwordParameter("pwd")
          // 로그인 성공시, 리다이렉트하지 않고, 204 상태로 응답
          .successHandler((req, res, auth) -> res.setStatus(HttpStatus.NO_CONTENT.value()))
          // 로그인 실패시, 리다이렉트하지 않고, 401 상태로 응답
          .failureHandler(new SimpleUrlAuthenticationFailureHandler())
          .permitAll()

          .and()
          .csrf().disable()
          .cors();
    }
  }
}
