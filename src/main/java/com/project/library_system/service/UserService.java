package com.project.library_system.service;

import com.project.library_system.dto.UserDTO;

public interface UserService {
    UserDTO loginOk(UserDTO dto) throws Exception;
}
