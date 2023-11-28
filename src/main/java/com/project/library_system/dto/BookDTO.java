package com.project.library_system.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
public class BookDTO {
    private Integer bookNum;
    private String bookTitle;
    private String author;
    private String genre;
    private String publisher;
    private int publishedYear;
    private String status;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date borrowDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date returnDate;
    private String userId;

    private int pageNo;
    private int totalPage;
    private int pageSize;

    private String admin;
}
