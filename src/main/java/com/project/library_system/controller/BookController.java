package com.project.library_system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/book")
public class BookController {

    // 도서 상세 정보
    @GetMapping("/bookDetail")
    public String bookDetail() {
        return "/book/bookDetail";
    }

    // 도서 등록
    @GetMapping("/bookRegist")
    public String bookRegist() {
        return "/book/bookRegist";
    }

    // 도서 수정
    @GetMapping("/bookEdit")
    public String bookEdit() {
        return "/book/bookEdit";
    }

}
