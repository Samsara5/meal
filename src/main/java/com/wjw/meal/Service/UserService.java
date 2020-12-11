package com.wjw.meal.Service;

import com.wjw.meal.Dao.UserMapper;
import com.wjw.meal.Pojo.User;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    UserMapper userMapper;

    List<User> getAllUser(){
        return userMapper.selectByExample(null);
    }

}
