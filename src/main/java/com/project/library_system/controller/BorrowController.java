package com.project.library_system.controller;

import com.project.library_system.dto.BorrowDTO;
import com.project.library_system.service.BorrowService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
@RequestMapping("/library/borrow")
public class BorrowController {

    private final BorrowService service;

    // 대출 정보 조회
    @GetMapping("/borrowList/{userId}")
    public String borrowList(@PathVariable String userId, Model model) {
        List<BorrowDTO> borrowList = service.borrowList(userId);
        model.addAttribute("borrowList", borrowList);
        return "borrowList"; // 대출 정보를 보여줄 JSP 페이지 이름
    }

    // 대출하기
    @PostMapping("/borrowBook/{bookNum}")
    @ResponseBody
    @Transactional
    public ResponseEntity<String> borrowBook(@PathVariable int bookNum, @RequestBody Map<String, String> requestData) {
        try {
            String userId = requestData.get("userId");
            service.borrowBook(bookNum, userId);
            return ResponseEntity.ok("도서 대출이 완료되었습니다.");
        } catch (Exception e) {
            return ResponseEntity.status(500).body("도서 대출 중 오류 발생");
        }
    }

    // 반납하기
    @PostMapping("/returnBook/{bookNum}")
    @ResponseBody
    @Transactional
    public ResponseEntity<String> returnBook(@PathVariable int bookNum) {
        try {
            service.returnBook(bookNum);
            return ResponseEntity.ok("도서 반납이 완료되었습니다.");
        } catch (Exception e) {
            return ResponseEntity.status(500).body("도서 반납 중 오류 발생");
        }
    }
}
