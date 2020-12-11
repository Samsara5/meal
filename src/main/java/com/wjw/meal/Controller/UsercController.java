package com.wjw.meal.Controller;

import com.wjw.meal.Dao.UserMapper;
import com.wjw.meal.Pojo.User;
import com.wjw.meal.Service.UserService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@Api(tags = { "用户信息管理" })
@RequestMapping("/user")
public class UsercController {

    @Autowired
    private UserService userService;

    UserMapper userMapper;

    @ApiOperation(value = "用户登录", notes = "")
    @GetMapping(value="/login")
    public List<User> Login(@ApiParam(value = "用户名" , required=true ) @RequestParam String name) {
        return userMapper.selectByExample(null);
    }
}
