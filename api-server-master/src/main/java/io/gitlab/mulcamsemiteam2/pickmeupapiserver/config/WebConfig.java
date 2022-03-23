package io.gitlab.mulcamsemiteam2.pickmeupapiserver.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.io.File;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Autowired
    private PickmeupProperties pickmeupProperties;

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        File uploadDir = new File(pickmeupProperties.getUploadPath());
        String uploadPath = uploadDir.getAbsolutePath();
        if(!uploadPath.endsWith(File.separator)) {
            uploadPath += File.separator;
        }
        registry.addResourceHandler("/public/upload/**")
                .addResourceLocations("file:///" + uploadPath);
    }
}
