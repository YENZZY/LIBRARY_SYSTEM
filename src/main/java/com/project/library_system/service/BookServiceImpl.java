package com.project.library_system.service;

import com.project.library_system.dao.BookDAO;
import com.project.library_system.dto.BookDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

//primary : 여러 개의 빈이 존재할 때 해당 클래스를 우선적으로 선택
@Service
@RequiredArgsConstructor
@Primary
public class BookServiceImpl implements BookService {

    private final BookDAO dao;

    @Override
    public List<BookDTO> bookListAll() {

        return dao.bookListAll();
    }

    @Override
    public List<BookDTO> searchBooks(String keyword) {
        return dao.searchBooks(keyword);
    }

    @Override
    public BookDTO detailBook(Integer bookNum) {

        return dao.detailBook(bookNum);
    }

    @Override
    public void bookRegistOk(BookDTO bookDTO) {

        dao.bookRegistOk(bookDTO);
    }

    @Override
    public BookDTO bookEdit(Integer bookNum) {
        return dao.bookEdit(bookNum);
    }

    @Override
    public void bookEditOk(BookDTO bookDTO) {
        dao.bookEditOk(bookDTO);
    }

    @Override
    public void bookDel(int bookNum) {
        dao.bookDel(bookNum);
    }

}
