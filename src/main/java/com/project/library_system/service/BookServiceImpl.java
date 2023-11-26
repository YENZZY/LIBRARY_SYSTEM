package com.project.library_system.service;

import com.project.library_system.dao.BookDAO;
import com.project.library_system.dto.BookDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
@Primary
public class BookServiceImpl implements BookService {
    private final BookDAO dao;
    // 댕스타 메인 페이지
    @Override
    public List<BookDTO> bookListAll() {
        return dao.bookListAll();
    }

    @Override
    public List<BookDTO> searchBooks(String keyword){
        return dao.searchBooks(keyword);
    }
}
