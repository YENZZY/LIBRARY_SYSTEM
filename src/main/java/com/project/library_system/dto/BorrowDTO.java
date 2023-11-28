package com.project.library_system.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
public class BorrowDTO {
    private Integer borrowNum;
    private String userId;
    private Integer bookNum;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date borrowDate;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date returnDate;
    private int borrowCount;

    // Book 정보를 담을 추가적인 필드
    private String bookTitle;
    private String author;
    private String genre;
    private String publisher;
    private int publishedYear;
    private String status;
}
