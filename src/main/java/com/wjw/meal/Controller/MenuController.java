package com.wjw.meal.Controller;

import com.wjw.meal.Pojo.Menu;
import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Service.MenuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

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

    @ApiOperation(value = "通过id查询菜单")
    @GetMapping("/getmenusbytype")
    public Message getMenusbyType(@RequestParam String id){
        return Message.success().add("menus",menuService.getMenusByMenuType(Integer.valueOf(id)));
    }

    @ApiOperation(value = "获取所有菜单")
    @GetMapping("/getallmenus")
    public Message getAllMenus(){
        return Message.success().add("menus",menuService.getAllMenus());
    }


    @ApiOperation(value = "导入Excel批量导入菜单")
    @PostMapping("importmenusbyexcel")
    public void importMenusByExcel(@RequestParam("file") MultipartFile file){
        menuService.importMenusByExcel(file);
    }


}
