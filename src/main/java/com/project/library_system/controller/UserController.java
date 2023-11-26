package com.project.library_system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    // 메인 페이지 (도서 검색 및 도서 목록)
    @GetMapping("/main")
    public String main(){
        return "main";
    }
    // 로그인
    @GetMapping("/login")
    public String login(){
        return "login";
    }

    // 회원가입
    @GetMapping("/signUp")
    public String signUp(){
        return "signUp";
    }
}
