package io.gitlab.mulcamsemiteam2.pickmeupapiserver.config;

import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.web.config.PageableHandlerMethodArgumentResolverCustomizer;

@Getter
@Setter
@Configuration
@ConfigurationProperties(prefix = "io.pickmeup")
public class PickmeupProperties implements InitializingBean {
    private String uploadPath;

    private static PickmeupProperties instance;

    @Override
    public void afterPropertiesSet() throws Exception {
        instance = this;
    }

    public static PickmeupProperties getInstance() {
        return instance;
    }

    @Bean
    public PageableHandlerMethodArgumentResolverCustomizer customize() {
        // JPA Pageable 설정
        return p -> {
            p.setOneIndexedParameters(true);	// 1부터 시작
            p.setMaxPageSize(100);				// size=10
        };
    }
}
