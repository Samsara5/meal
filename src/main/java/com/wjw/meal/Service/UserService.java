package com.wjw.meal.Service;

import com.github.pagehelper.PageInfo;
import com.wjw.meal.Pojo.User;
import org.springframework.web.multipart.MultipartFile;

import java.util.Map;

public interface UserService {

    PageInfo getAllUsersByPageNum(String topage, String pagesize);

    User getUserByName(String name);

    Boolean verifyUser(String username, String password);

    void AddUser(User user);

    Map<String, String> getPassword(String username, String phone, String name);

    void UpdateUser(User user);

    String importUsersByExcel(MultipartFile file);
}
