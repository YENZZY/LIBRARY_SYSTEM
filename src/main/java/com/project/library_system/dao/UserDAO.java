package com.project.library_system.dao;

import com.project.library_system.dto.UserDTO;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
@Mapper
@Repository
public interface UserDAO {
    UserDTO loginOk(UserDTO dto) throws Exception;
}
