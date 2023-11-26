package com.project.library_system.dto;

import lombok.Getter;
import lombok.Setter;

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
}
