package com.wjw.meal.Controller;

import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Service.SystemService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;

@RestController
@Api(tags = "系统服务")
@RequestMapping("/system")
public class SystemController {

    @Autowired
    SystemService systemService;

    @ApiOperation(value = "获取页面菜单栏", notes = "")
    @GetMapping("/getNavigation")
    public Message getNavigation() {
        return systemService.getNavigation();
    }

    @ApiOperation(value = "下载用户导入模板")
    @GetMapping("/getemployeeimporttemplate")
    public void getEmployeeExcelTemplate(HttpServletResponse response) {
        systemService.getEmployeeExcelTemplate(response);
    }

    @ApiOperation(value = "下载用户导入模板")
    @GetMapping("/getuserimporttemplate")
    public void getUserExcelTemplate(HttpServletResponse response) {
        systemService.getUserExcelTemplate(response);
    }

    @ApiOperation(value = "下载用户导入模板")
    @GetMapping("/getmenuimporttemplate")
    public void getMenuExcelTemplate(HttpServletResponse response) {

    }

    @ApiOperation(value = "下载用户导入模板")
    @GetMapping("/getstroeimporttemplate")
    public void getStroeExcelTemplate(HttpServletResponse response) {

    }

}
