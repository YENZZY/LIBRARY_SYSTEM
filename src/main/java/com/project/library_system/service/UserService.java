package com.project.library_system.service;

import com.project.library_system.dto.UserDTO;

public interface UserService {
    // 로그인
    UserDTO loginOk(UserDTO dto) throws Exception;

    // 로그아웃
    void logout(String userId);

    // 회원가입
    void signUpOk(UserDTO userDTO);

    // 아이디 중복 검사
    boolean idOk(String userId);

    // 헤더 정보
    UserDTO headerInfo(String userId);
}
