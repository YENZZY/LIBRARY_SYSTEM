package com.project.library_system.dao;

import com.project.library_system.dto.UserDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserDAO {
    // 로그인
    UserDTO loginOk(UserDTO dto) throws Exception;

    // 로그아웃
    void logout(String userId);

    // 회원가입
    void signUpOk(UserDTO userDTO);

    // 아이디 중복 검사
    boolean idOk(String userId);

    // 헤더정보
    UserDTO headerInfo(String userId);


}
