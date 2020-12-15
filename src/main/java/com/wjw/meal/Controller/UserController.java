package com.wjw.meal.Controller;


import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Pojo.User;
import com.wjw.meal.Service.UserService;
import com.wjw.meal.Utils.Token;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;


@RestController
@Api(tags = { "用户信息管理" })
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @ApiOperation(value = "用户登录", notes = "")
    @PostMapping(value="/login")
    public Message Login(@RequestParam String username, String password) {
        if (userService.verifyUser(username,password)){
         return Message.success().add("Token", Token.token(username,password));
        }else {
            return Message.fail();
        }
    }

    @ApiOperation(value = "用户注册",notes = "")
    @PostMapping(value = "/regist")
    public Message regist(@RequestBody User user){
        userService.AddUser(user);
        return Message.success();
    }

    @ApiOperation(value = "忘记密码",notes = "")
    @PostMapping(value = "/getPassword")
    public Message getpassword(@RequestParam String username,String phone,String name){
        Map<String,String> result = userService.getPassword(username,phone,name);
        if (result.get("istrue").equals("true")){
            return Message.success().add("password",result.get("password"));
        }
        return Message.fail().add("message","找回失败，请重试");
    }

    @ApiOperation(value = "获取所有用户信息",notes = "")
    @GetMapping(value = "/getAllUser")
    public List<User> getAllUsers(){
        return userService.getAllUser();
    }

    @ApiOperation(value = "通过username更新用户",notes = "")
    @PostMapping(value = "/updateuser")
    public Message updateUser(@RequestBody User user){
        userService.UpdateUser(user);
        return Message.success();
    }

    @ApiOperation(value = "导入Excel模板批量导入用户",notes = "")
    @PostMapping(value = "/importUsersByExcel")
    public String importUsersByExcel(@RequestParam("file") MultipartFile file){
        return userService.importUsersByExcel(file);
    }

}
