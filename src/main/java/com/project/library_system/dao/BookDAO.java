package com.project.library_system.dao;

import com.project.library_system.dto.BookDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@Mapper
public interface BookDAO {
    // 도서 목록
    List<BookDTO> bookListAll();

    // 도서 검색
    List<BookDTO> searchBooks(String keyword);

    // 도서 상세 정보
    BookDTO detailBook(Integer bookNum);

}
