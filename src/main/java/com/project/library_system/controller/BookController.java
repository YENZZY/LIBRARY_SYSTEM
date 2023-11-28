package com.project.library_system.controller;

import com.project.library_system.dto.BookDTO;
import com.project.library_system.service.BookService;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.awt.print.Book;
import java.util.List;

@Controller
@RequiredArgsConstructor
@RequestMapping("/library")
public class BookController {
    private final BookService service;

    // 메인 페이지 (도서 검색 및 도서 목록)
    @GetMapping("/main")
    public String bookListAll(Model model) {
        List<BookDTO> bookListAll = service.bookListAll();
        model.addAttribute("bookListAll", bookListAll);
        return "library/main";
    }
    //도서 목록 페이징



    // 도서 검색
    @GetMapping("/book/search")
    public String searchBooks(@RequestParam("keyword") String keyword, Model model) {
        List<BookDTO> searchResults = service.searchBooks(keyword);
        model.addAttribute("bookListAll", searchResults);
        model.addAttribute("searchKeyword", keyword); // 검색어를 모델에 추가
        return "library/main"; // Forward to the main page
    }

    // 도서 상세 정보
    // @PathVariable : URL 경로의 일부를 변수로 받을 때 사용 / 주로 RESTful API에서 경로에 포함된 변수 값을 추출할 때 사용
    @GetMapping("/book/bookDetail/{bookNum}")
    public String detailBook(@PathVariable Integer bookNum, Model model) {
        BookDTO detailBook = service.detailBook(bookNum);
        model.addAttribute("bookDetail", detailBook);

        return "library/book/bookDetail";
    }

    // 도서 등록
    @GetMapping("/book/bookRegist")
    public String bookRegist() {

        return "library/book/bookRegist";
    }

    // 도서 등록 처리
    // @ModelAttribute : 컨트롤러 메서드에 파라미터로 전달되는 객체를 모델에 자동으로 추가 / HTML 폼에서 입력된 데이터를 받아와서 객체로 변환
    @PostMapping("/book/bookRegistOk")
    public String bookRegistOk(@ModelAttribute BookDTO bookDTO, Model model){
        service.bookRegistOk(bookDTO);
        model.addAttribute("bookRegistOk", bookDTO);

        return "redirect:/library/main";
    }

    // 도서 수정
    @GetMapping("/book/bookEdit/{bookNum}")
    public String bookEdit(@PathVariable Integer bookNum, Model model) {
        BookDTO bookEdit = service.bookEdit(bookNum);
        model.addAttribute("bookEdit", bookEdit);

        return "library/book/bookEdit";
    }


    //도서 수정 데이터 보내기
    //RequestBody: 반환값 본문에 저장
    //Map 응답 데이터 담는 객체
    @PostMapping("/library/book/bookEditOk")
    public String bookEditOk(@ModelAttribute BookDTO bookDTO, @RequestParam Integer bookNum, RedirectAttributes redirectAttributes) {
        bookDTO.setBookNum(bookNum);

        service.bookEditOk(bookDTO, redirectAttributes);

        // Redirect to the bookDetail page with the actual book number
        return "redirect:/library/main";
    }

    //도서 삭제
    @PostMapping("/bookDel/{bookNum}")
    @ResponseBody
    @Transactional
    public ResponseEntity<String> bookDel(@PathVariable int bookNum) {
        try {
            service.bookDel(bookNum);
            return ResponseEntity.ok("도서 삭제가 완료되었습니다.");
        } catch (Exception e) {
            return ResponseEntity.status(500).body("도서 삭제 중 오류 발생");
        }
    }

}
