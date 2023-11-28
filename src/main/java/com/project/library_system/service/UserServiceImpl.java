package com.project.library_system.service;
import com.project.library_system.dao.UserDAO;
import com.project.library_system.dto.UserDTO;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Primary
public class UserServiceImpl implements UserService {

    private final UserDAO dao;

    @Override
    public UserDTO loginOk(UserDTO dto) throws Exception {
        return dao.loginOk(dto);
    }

    @Override
    public void logout(String userId){

        dao.logout(userId);
    }
    @Override
    public void signUpOk(UserDTO userDTO){
        dao.signUpOk(userDTO);
    }

    @Override
    public boolean idOk(String userId) {
        return dao.idOk(userId);
    }
    @Override
    public UserDTO headerInfo(String userId) {
        return dao.headerInfo(userId);
    }

}
