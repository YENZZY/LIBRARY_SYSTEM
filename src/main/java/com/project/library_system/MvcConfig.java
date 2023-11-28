package com.project.library_system;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        // 로그인 페이지를 기본으로 설정
        registry.addViewController("/").setViewName("forward:/library/login");
        // 로그인 성공 후 이동할 페이지
        registry.addViewController("/library/main").setViewName("forward:/library/main");
    }
}
