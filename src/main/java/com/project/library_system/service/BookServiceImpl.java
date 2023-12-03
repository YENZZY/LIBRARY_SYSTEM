package com.project.library_system.service;

import com.project.library_system.dao.BookDAO;
import com.project.library_system.dto.BookDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.ArrayList;
import java.util.List;

//primary : 여러 개의 빈이 존재할 때 해당 클래스를 우선적으로 선택
@Service
@Primary
public class BookServiceImpl implements BookService {

    private final BookDAO dao;

    public BookServiceImpl(BookDAO dao) {
        this.dao = dao;
    }

    @Override
    public List<BookDTO> bookListAll() {
        return dao.bookListAll();
    }

    @Override
    public List<BookDTO> bookListAllPage(int pageNo) {
        int pageSize = 10; // 페이지당 아이템 개수
        int startItemIndex = (pageNo - 1) * pageSize + 1;
        int endItemIndex = pageNo * pageSize;

        List<BookDTO> filteredBookList = new ArrayList<>();

        for (BookDTO book : dao.bookListAllPage()) {
            int bookPageNo = book.getPageNo();
            if (bookPageNo >= startItemIndex && bookPageNo <= endItemIndex) {
                filteredBookList.add(book);
            }
        }

        // DAO에 시작 인덱스와 끝 인덱스를 전달하여 해당 페이지의 데이터를 조회
        return filteredBookList;
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
