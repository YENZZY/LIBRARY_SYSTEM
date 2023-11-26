package com.project.library_system.dto;

import lombok.Getter;
import lombok.Setter;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Getter
@Setter
public class UserDTO {
    private String userId;
    private Integer userNum;
    private String password;
    private String email;
    private String admin;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date joinDate;
}
