package com.wjw.meal.Service.impl;

import com.wjw.meal.Dao.UserMapper;
import com.wjw.meal.Pojo.User;
import com.wjw.meal.Pojo.UserExample;
import com.wjw.meal.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import java.util.*;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> getAllUser() {
        return userMapper.selectByExample(null);
    }

    public Boolean verifyUser(String username, String password){
        UserExample example = new UserExample();
        example.createCriteria().andUsernameEqualTo(username);
        List<User> users = userMapper.selectByExample(example);
        if (!CollectionUtils.isEmpty(users)){
            User u = users.get(0);
            if (u.getPassword().equals(password)){
                return true;
            }
            return false;
        }
        return false;
    }


    @Override
    public void AddUser(User user) {
        user.setUid(UUID.randomUUID().toString());
        user.setCreatetime(new Date(System.currentTimeMillis()));
        userMapper.insert(user);
    }

    @Override
    public Map<String, String> getPassword(String username, String phone, String name) {
        Map<String,String> res = new HashMap<>();
        UserExample example = new UserExample();
        example.createCriteria().andUsernameEqualTo(username).andPhoenEqualTo(phone).andNameEqualTo(name);
        List<User> users = userMapper.selectByExample(example);
        if (!CollectionUtils.isEmpty(users)){
            res.put("istrue","true");
            res.put("password",users.get(0).getPassword());
        }else {
            res.put("istrue","false");
            res.put("password","null");
        }
        return res;
    }

    @Override
    public void UpdateUser(User user) {
        UserExample example = new UserExample();
        example.createCriteria().andUsernameEqualTo(user.getUsername());
        userMapper.updateByExampleSelective(user,example);
    }

    @Override
    public String importUsersByExcel(MultipartFile file) {
        return null;
    }


}
