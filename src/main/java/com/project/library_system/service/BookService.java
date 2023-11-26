package com.project.library_system.service;

import com.project.library_system.dto.BookDTO;

import java.util.List;

public interface BookService {
    // 도서 목록
    List<BookDTO> bookListAll();
    // 도서 검색
    List<BookDTO> searchBooks(String keyword);
}
