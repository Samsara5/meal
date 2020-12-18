package com.wjw.meal.Controller;

import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Service.SystemService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Api(tags = "系统服务")
@RequestMapping("/system")
public class SystemController {

    @Autowired
    SystemService systemService;

    @ApiOperation(value = "获取页面菜单栏",notes = "")
    @GetMapping("/getNavigation")
    public Message getNavigation(){
        return systemService.getNavigation();
    }
}
