package com.project.library_system.dao;

import com.project.library_system.dto.BorrowDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface BorrowDAO {

    // 대출 정보 조회
    List<BorrowDTO> borrowList();

    // 대출하기
    void borrowBook(int bookNum, String userId);

    //대출하기시 도서 상태 변경
    void updateBookStatusBorrow(int bookNum, String userId);

    //반납하기시 대출 정보 삭제
    void deleteBorrowRecord(int bookNum);

    //반납하기시 도서 상태 변경
    void updateBookStatus(int bookNum);
}
