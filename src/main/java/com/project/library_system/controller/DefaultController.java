package com.project.library_system.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class DefaultController {
    @GetMapping("/")
    public String redirectToLogin() {
        return "redirect:/library/login";
    }

    @GetMapping("/library/main")
    public String mainPage() {
        return "library/main";
    }
}
