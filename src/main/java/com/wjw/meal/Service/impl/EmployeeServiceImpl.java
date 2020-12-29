package com.wjw.meal.Service.impl;

import com.wjw.meal.Dao.EmployeeMapper;
import com.wjw.meal.Dao.EmployeeTypeMapper;
import com.wjw.meal.Pojo.Employee;
import com.wjw.meal.Pojo.EmployeeExample;
import com.wjw.meal.Pojo.EmployeeType;
import com.wjw.meal.Pojo.EmployeeTypeExample;
import com.wjw.meal.Service.EmployeeService;
import com.wjw.meal.Utils.ExcelUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    EmployeeMapper employeeMapper;

    @Autowired
    EmployeeTypeMapper employeeTypeMapper;

    @Override
    public Boolean verifyEmployee(String username, String password) {
        EmployeeExample example = new EmployeeExample();
        example.createCriteria().andEusernameEqualTo(username);
        List<Employee> employeeList = employeeMapper.selectByExample(example);
        if (!CollectionUtils.isEmpty(employeeList)) {
            Employee e = employeeList.get(0);
            if (e.getEpassword().equals(password)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override
    public List<Employee> getAllEmployee() {
        return employeeMapper.selectByExample(null);
    }

    @Override
    public Employee getEmployeeByName(String name) {
        EmployeeExample example = new EmployeeExample();
        example.createCriteria().andEnameEqualTo(name);
        return employeeMapper.selectByExample(example).get(0);
    }


    @Override
    public void AddEmployee(Employee employee) {
        employee.setEid(UUID.randomUUID().toString());
        employeeMapper.insert(employee);
    }


    @Override
    public Map<String, String> getPassword(String username, String phone, String name) {
        Map<String, String> res = new HashMap<>();
        EmployeeExample example = new EmployeeExample();
        example.createCriteria().andEusernameEqualTo(username).andEphoneEqualTo(phone).andEnameEqualTo(name);
        List<Employee> employees = employeeMapper.selectByExample(example);
        if (!CollectionUtils.isEmpty(employees)) {
            res.put("istrue", "true");
            res.put("password", employees.get(0).getEpassword());
        } else {
            res.put("istrue", "false");
            res.put("password", "null");
        }
        return res;
    }

    @Override
    public void UpdateEmployee(Employee employee) {
        EmployeeExample example = new EmployeeExample();
        example.createCriteria().andEusernameEqualTo(employee.getEusername());
        employeeMapper.updateByExampleSelective(employee, example);
    }


    @Override
    public String importEmployeesByExcel(MultipartFile file) {
        ExcelUtils sheet = new ExcelUtils(file, "username");
        Map<String, List<String>> sheetinfo = sheet.readExcelData();
        for (int i = 1; i < sheetinfo.size(); i++) {
            List<String> cloumdata = sheetinfo.get(String.valueOf(i));
            Employee employee = new Employee();
            //姓名
            employee.setEname(cloumdata.get(0));
            EmployeeTypeExample example = new EmployeeTypeExample();
            example.createCriteria().andRolenameEqualTo(cloumdata.get(1));
            EmployeeType employeeType = employeeTypeMapper.selectByExample(example).get(0);
            //部门
            employee.setDeptid(employeeType.getRoleid());
            //职位
            employee.setEroleid(employeeType.getRoleid());
            //usename
            employee.setEusername(cloumdata.get(2));
            //密码
            employee.setEpassword(cloumdata.get(3));
            //性别
            employee.setEsex(Integer.valueOf(cloumdata.get(4)));
            //电话
            employee.setEphone(cloumdata.get(5));
            //是否在职
            employee.setEstate(Integer.valueOf(cloumdata.get(6)));
            //薪资
            employee.setSalary(cloumdata.get(8));
            AddEmployee(employee);
        }
        return "读取成功";
    }

}
