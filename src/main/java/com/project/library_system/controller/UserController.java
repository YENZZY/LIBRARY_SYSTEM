package com.project.library_system.controller;

import com.project.library_system.dto.UserDTO;
import com.project.library_system.service.UserService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/library")
public class UserController {

   @Autowired
   @Qualifier("userServiceImpl")
   UserService service;



    // 로그인
    @GetMapping("/login")
    public String login(){

        return "library/login";
    }

    //로그인 구현
    @PostMapping("/loginOk")
    public String loginOk(UserDTO dto, HttpSession session, Model model) {
        try {
            UserDTO loggedInUser = service.loginOk(dto);
            if (loggedInUser != null) {
                // 로그인 성공 시 세션에 사용자 정보 저장
                session.setAttribute("login", loggedInUser);
                return "redirect:/library/main";
            } else {
                // 로그인 실패 시 에러 메시지를 모델에 추가
                model.addAttribute("error", "아이디 또는 비밀번호가 올바르지 않습니다.");
                return "redirect:/library/login";
            }
        } catch (Exception e) {
            // 예외 발생 시 로깅 또는 적절한 처리를 추가할 수 있습니다.
            e.printStackTrace();
            model.addAttribute("error", "로그인 중 오류가 발생하였습니다.");
            return "redirect:/library/login";
        }
    }

    // 로그아웃
    @PostMapping("/logout")
    public String logout(HttpSession session) {
        // 세션 무효화
        session.invalidate();
        return "redirect:/library/login?logout";
    }




    // 회원가입
    @GetMapping("/signUp")
    public String signUp(){
        return "library/signUp";
    }

    // 헤더 정보
    @GetMapping("/headerInfo")
    @ResponseBody
    public UserDTO headerInfo(HttpSession session) {
        UserDTO user = (UserDTO) session.getAttribute("login");
        return user;
    }
}
