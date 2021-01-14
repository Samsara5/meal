package com.wjw.meal.Service;

import com.wjw.meal.Pojo.Message;

import javax.servlet.http.HttpServletResponse;

public interface SystemService {
    Message getNavigation();

    void getEmployeeExcelTemplate(HttpServletResponse response);

    void getUserExcelTemplate(HttpServletResponse response);

    void getMenuExcelTemplate(HttpServletResponse response);

    void getStroeExcelTemplate(HttpServletResponse response);

    void getOrderExcelTemplate(HttpServletResponse response);

    void getImageFile(HttpServletResponse response,String menuId);
}
