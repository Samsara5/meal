package com.wjw.meal.Controller;

import com.wjw.meal.Pojo.Menu;
import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Service.MenuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@Api(tags = "菜单管理")
@RequestMapping(value = "/menu")
public class MenuController {

    @Autowired
    MenuService menuService;

    @ApiOperation(value = "新增菜单项")
    @PostMapping("/addmenu")
    public Message addmenu(@RequestBody Menu menu){
        menuService.addMenu(menu);
        return Message.success();
    }
}
