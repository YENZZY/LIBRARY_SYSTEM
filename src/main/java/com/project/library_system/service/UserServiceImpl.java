package com.project.library_system.service;

import com.project.library_system.dao.UserDAO;
import com.project.library_system.dto.UserDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    private final UserDAO userDAO;

    @Autowired
    public UserServiceImpl(UserDAO userDAO) {
        this.userDAO = userDAO;
    }
    @Override
    public UserDTO loginOk(UserDTO dto) throws Exception {
        return userDAO.loginOk(dto);
    }
}
