package com.project.library_system;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan(basePackages = "com.project.library_system")
public class LibrarySystemApplication {

    public static void main(String[] args) {
        SpringApplication.run(LibrarySystemApplication.class, args);
    }
}
