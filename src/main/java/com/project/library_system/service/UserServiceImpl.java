package com.project.library_system.service;
import com.project.library_system.dao.UserDAO;
import com.project.library_system.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    private final UserDAO dao;
    private final BCryptPasswordEncoder passwordEncoder;

    @Autowired
    public UserServiceImpl(UserDAO userDAO, BCryptPasswordEncoder passwordEncoder) {
        this.dao = userDAO;
        this.passwordEncoder = passwordEncoder;
    }
    @Override
    public UserDTO loginOk(UserDTO dto) throws Exception {
        return dao.loginOk(dto);
    }

    @Override
    public void logout(String userId){
        dao.logout(userId);
    }

    @Override
    public UserDTO headerInfo(String userId) {
        return dao.headerInfo(userId);
    }
}
