package com.project.library_system.service;

import com.project.library_system.dto.BookDTO;

import java.util.List;

public interface BookService {
    List<BookDTO> bookListAll();
}
