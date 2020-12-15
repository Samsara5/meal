package com.wjw.meal.Service;

import com.wjw.meal.Pojo.User;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

public interface UserService {

    List<User> getAllUser();

    Boolean verifyUser(String username, String password);

    void AddUser(User user);

    Map<String,String> getPassword(String username,String phone,String name);

    void UpdateUser(User user);

    String importUsersByExcel(MultipartFile file);
}
