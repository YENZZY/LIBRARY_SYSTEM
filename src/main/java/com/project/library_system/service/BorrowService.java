package com.project.library_system.service;

import com.project.library_system.dto.BorrowDTO;

import java.util.List;

public interface BorrowService {
    // 대출 정보 조회
    List<BorrowDTO> borrowList();

    // 대출하기
    void borrowBook(int bookNum, String userId);

    // 반납하기시 대출 정보 삭제
    void returnBook(int bookNum);
}

