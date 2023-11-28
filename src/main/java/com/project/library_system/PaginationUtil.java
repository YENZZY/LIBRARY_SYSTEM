package com.project.library_system;

public class PaginationUtil {

    public static int calculateTotalPages(long totalItems, int pageSize) {
        if (pageSize <= 0) {
            throw new IllegalArgumentException("Page size must be greater than 0");
        }

        return (int) Math.ceil((double) totalItems / pageSize);
    }
}

