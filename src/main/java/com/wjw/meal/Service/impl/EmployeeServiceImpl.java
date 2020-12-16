package com.wjw.meal.Service.impl;

import com.wjw.meal.Dao.EmployeeMapper;
import com.wjw.meal.Pojo.Employee;
import com.wjw.meal.Pojo.EmployeeExample;
import com.wjw.meal.Service.EmployeeService;
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

    @Override
    public Boolean verifyEmployee(String username, String password) {
        EmployeeExample example = new EmployeeExample();
        example.createCriteria().andEusernameEqualTo(username);
        List<Employee> employeeList  = employeeMapper.selectByExample(example);
        if (!CollectionUtils.isEmpty(employeeList)){
            Employee e = employeeList.get(0);
            if (e.getEpassword().equals(password)){
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
    public void AddEmployee(Employee employee) {
        employee.setEid(UUID.randomUUID().toString());
        employeeMapper.insert(employee);
    }


    @Override
    public Map<String, String> getPassword(String username, String phone, String name) {
        Map<String,String> res = new HashMap<>();
        EmployeeExample example = new EmployeeExample();
        example.createCriteria().andEusernameEqualTo(username).andEphoneEqualTo(phone).andEnameEqualTo(name);
        List<Employee> employees = employeeMapper.selectByExample(example);
        if (!CollectionUtils.isEmpty(employees)){
            res.put("istrue","true");
            res.put("password",employees.get(0).getEpassword());
        }else {
            res.put("istrue","false");
            res.put("password","null");
        }
        return res;
    }

    @Override
    public void UpdateEmployee(Employee employee) {
        EmployeeExample example = new EmployeeExample();
        example.createCriteria().andEusernameEqualTo(employee.getEusername());
        employeeMapper.updateByExampleSelective(employee,example);
    }


    @Override
    public String importEmployeesByExcel(MultipartFile file) {
        return null;
    }

}
