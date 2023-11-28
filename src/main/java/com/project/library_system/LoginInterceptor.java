package com.project.library_system;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.HandlerInterceptor;

public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        // 여기에서 로그인 여부를 체크하여 로그인되어 있지 않으면 다른 페이지로 리다이렉트
        if (request.getSession().getAttribute("userId") == null) {
            response.sendRedirect("/library/login");
            return false; // 더 이상 진행하지 않도록 false 반환
        }
        return true; // 계속 진행
    }

}
