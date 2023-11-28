//package com.project.library_system;
//
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
//import org.springframework.security.web.SecurityFilterChain;
//
//@Configuration
//@EnableWebSecurity
//public class SecurityConfig {
//    @Bean
//    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
//        http
//                .csrf(AbstractHttpConfigurer::disable);
//        http
//                .authorizeHttpRequests(
//                        authorize -> authorize
//                                .requestMatchers("/library/signUp").permitAll()
//                                .requestMatchers("/library/login").permitAll()
//                                .requestMatchers("/").permitAll()
//                                .anyRequest().authenticated()
//                );
//        return http.build();
//    }
//}
