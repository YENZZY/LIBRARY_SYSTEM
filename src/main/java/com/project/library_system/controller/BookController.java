package com.project.library_system.controller;

import com.project.library_system.dao.BookDAO;
import com.project.library_system.dto.BookDTO;
import com.project.library_system.service.BookService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequiredArgsConstructor
//@RequestMapping("/book")
public class BookController {
    private final BookService service;

    // 메인 페이지 (도서 검색 및 도서 목록)
    @GetMapping("/main")
    public String bookListAll(Model model) {
        List<BookDTO> bookListAll = service.bookListAll();
        model.addAttribute("bookListAll", bookListAll);
        return "/main";
    }
    @GetMapping("/search")
    public String searchBooks(@RequestParam("keyword") String keyword, Model model) {
        List<BookDTO> searchResults = service.searchBooks(keyword);
        model.addAttribute("bookListAll", searchResults);
        return "redirect:/main"; // Redirect to the bookList page
    }
    // 도서 상세 정보

    @GetMapping("/bookDetail")
    public String bookDetail(){
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
