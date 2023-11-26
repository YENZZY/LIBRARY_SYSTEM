package com.project.library_system.dao;

import com.project.library_system.dto.BookDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
@Mapper
public interface BookDAO {
    // 도서 목록 페이지
    List<BookDTO> bookListAll();
}
