package com.project.library_system.service;

import com.project.library_system.dao.BorrowDAO;
import com.project.library_system.dto.BorrowDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
@Primary
public class BorrowServiceImpl implements BorrowService {
    private final BorrowDAO dao;

    @Override
    public List<BorrowDTO> borrowList(String userId) {
        return dao.borrowList(userId);
    }

    @Override
    public void borrowBook(int bookNum, String userId) {
        dao.borrowBook(bookNum,userId);
        dao.updateBookStatusBorrow(bookNum,userId);
    }

    @Override
    public void returnBook(int bookNum) {
        dao.deleteBorrowRecord(bookNum);
        dao.updateBookStatus(bookNum);
    }
}

