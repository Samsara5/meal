package com.wjw.meal.Controller;

import com.wjw.meal.Pojo.Menu;
import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Service.MenuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    @ApiOperation(value = "修改菜单项")
    @PutMapping("/updatemenu")
    public Message updatemenu(@RequestBody Menu menu){
        menuService.updateMenu(menu);
        return Message.success();
    }
    @ApiOperation(value = "通过id删除单个菜单")
    @DeleteMapping("/deletemenu")
    public Message delmenubyid(@RequestParam String id){
        menuService.delMenuById(id);
        return Message.success();
    }

    @ApiOperation(value = "通过id批量删除")
    @DeleteMapping("/autodelmenus")
    public Message delmenubyids(@RequestParam List<String> ids){
        menuService.delmenubyids(ids);
        return Message.success();
    }

}
