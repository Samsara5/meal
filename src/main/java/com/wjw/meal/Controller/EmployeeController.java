package com.wjw.meal.Controller;

import com.wjw.meal.Pojo.Employee;
import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Service.EmployeeService;
import com.wjw.meal.Utils.Token;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

/**
 * @author wujiawei
 * @version 1.0
 * @Date 2021/1/7 11:27
 * @Description 员工管理
 */

@RestController
@Api(tags = "员工管理")
@RequestMapping(value = "/employee")
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @ApiOperation(value = "员工登录", notes = "")
    @PostMapping(value = "/login")
    public Message Login(@RequestBody Employee employee) {
        if (employeeService.verifyEmployee(employee.getEusername(), employee.getEpassword())) {
            return Message.success().add("Token", Token.token(employee.getEusername(), employee.getEpassword()));
        } else {
            return Message.fail();
        }
    }

    @ApiOperation(value = "员工注册", notes = "")
    @PostMapping(value = "/regist")
    public Message regist(@RequestBody Employee employee) {
        employeeService.AddEmployee(employee);
        return Message.success();
    }

    @ApiOperation(value = "忘记密码", notes = "")
    @PostMapping(value = "/getPassword")
    public Message getpassword(@RequestParam String username, String phone, String name) {
        Map<String, String> result = employeeService.getPassword(username, phone, name);
        if (result.get("istrue").equals("true")) {
            return Message.success().add("password", result.get("password"));
        }
        return Message.fail().add("message", "找回失败，请重试");
    }

    @ApiOperation(value = "获取所有员工信息", notes = "")
    @GetMapping(value = "/getAllEmployee")
    public List<Employee> getAllEmployee() {
        return employeeService.getAllEmployee();
    }

    @ApiOperation(value = "通过username更新员工", notes = "")
    @PostMapping(value = "/updateuser")
    public Message updateUser(@RequestBody Employee employee) {
        employeeService.UpdateEmployee(employee);
        return Message.success();
    }

    @ApiOperation(value = "导入Excel模板批量导入员工", notes = "")
    @PostMapping(value = "/importUsersByExcel")
    public String importUsersByExcel(@RequestParam("file") MultipartFile file) {
        return employeeService.importEmployeesByExcel(file);
    }

}
