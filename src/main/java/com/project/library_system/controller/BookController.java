package com.project.library_system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BookController {
//    메인 페이지
@GetMapping("/main")
    public String main(){
        return "main";
    }
}
