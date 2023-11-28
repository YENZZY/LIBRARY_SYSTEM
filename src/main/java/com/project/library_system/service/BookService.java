package com.project.library_system.service;

import com.project.library_system.dto.BookDTO;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.awt.print.Book;
import java.util.List;
import java.util.Map;

public interface BookService {
    // 도서 목록
    List<BookDTO> bookListAll();

    //도서 목록 페이징



    // 도서 검색
    List<BookDTO> searchBooks(String keyword);

    // 도서 상세 정보
    BookDTO detailBook(Integer bookNum);

    // 도서 등록
    void bookRegistOk(BookDTO bookDTO);

    // 도서 수정
    BookDTO bookEdit(Integer bookNum);

    //도서 수정 데이터
    void bookEditOk(BookDTO bookDTO, RedirectAttributes redirectAttributes);

    //도서 삭제
    void bookDel(int bookNum);
}
