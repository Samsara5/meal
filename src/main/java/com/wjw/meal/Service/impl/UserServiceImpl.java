package com.wjw.meal.Service.impl;

import com.wjw.meal.Dao.UserMapper;
import com.wjw.meal.Pojo.User;
import com.wjw.meal.Pojo.UserExample;
import com.wjw.meal.Service.UserService;
import com.wjw.meal.Utils.ExcelUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;


import java.text.SimpleDateFormat;
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
    public String importUsersByExcel(MultipartFile file){
        ExcelUtils sheet = new ExcelUtils(file,"username");
        Map<String, List<String>> sheetinfo = sheet.readExcelData();
        for (int i=1;i<sheetinfo.size();i++){
            List<String> cloumdata = sheetinfo.get(String.valueOf(i));
            User user = new User();
            //姓名
            user.setName(cloumdata.get(0));
            //username
            user.setUsername(cloumdata.get(1));
            //密码
            user.setPassword(cloumdata.get(2));
            //是否为VIP
            user.setRoleid(Integer.valueOf(cloumdata.get(3))==1 ? 7 : 8);
            //电话
            user.setPhoen(cloumdata.get(4));
            //邮箱
            user.setEmail(cloumdata.get(5));
            //生日
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//定义一个formate
            try {
                Date date = simpleDateFormat.parse(cloumdata.get(6));//将formate型转化成Date数据类型
                user.setBirth(date);
            }catch (Exception e){
                e.printStackTrace();
            }
            //性别
            user.setGender(Integer.valueOf(cloumdata.get(7)));
            AddUser(user);
        }
        return null;
    }


}
