package com.project.library_system.controller;

import com.project.library_system.dto.UserDTO;
import com.project.library_system.service.UserService;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

   @Autowired
   @Qualifier("userServiceImpl")
   UserService service;



    // 로그인
    @GetMapping("/login")
    public String login(){

        return "login";
    }

    @PostMapping("/loginOk")
    public String loginOk(UserDTO dto, HttpSession session) throws Exception {
        UserDTO loggedInUser = service.loginOk(dto);
        if (loggedInUser != null) {
            // 로그인 성공 시 세션에 사용자 정보 저장
            session.setAttribute("login", loggedInUser);
            return "redirect:/main";
        } else {

            return "redirect:/login?error";
        }
    }



    // 회원가입
    @GetMapping("/signUp")
    public String signUp(){
        return "signUp";
    }
}
