package com.wjw.meal.Service;

import com.wjw.meal.Pojo.Employee;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

public interface EmployeeService {
    Boolean verifyEmployee(String username, String password);

    List<Employee> getAllEmployee();

    Employee getEmployeeByName(String name);

    Employee getEmployeeByID(String id);

    void AddEmployee(Employee employee);

    Map<String, String> getPassword(String username, String phone, String name);

    void UpdateEmployee(Employee employee);

    String importEmployeesByExcel(MultipartFile file);
}
