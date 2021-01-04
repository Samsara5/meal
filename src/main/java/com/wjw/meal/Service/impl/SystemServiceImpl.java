package com.wjw.meal.Service.impl;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.wjw.meal.Dao.NavigationMapper;
import com.wjw.meal.Pojo.Message;
import com.wjw.meal.Pojo.Navigation;
import com.wjw.meal.Pojo.NavigationExample;
import com.wjw.meal.Service.SystemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

@Service
public class SystemServiceImpl implements SystemService {

    @Autowired
    NavigationMapper navigationMapper;

    @Autowired
    ResourceLoader resourceLoader;

    @Override
    public Message getNavigation() {
        List<JSONObject> navigationres = new ArrayList<>();
        NavigationExample example = new NavigationExample();
        example.createCriteria().andPidEqualTo(0);
        List<Navigation> mainnavigation = navigationMapper.selectByExample(example);
        for (Navigation pnav : mainnavigation) {
            example.clear();
            example.createCriteria().andPidEqualTo(pnav.getId());
            List<Navigation> childrenlist = navigationMapper.selectByExample(example);
            JSONObject object = (JSONObject) JSON.toJSON(pnav);
            object.put("children", childrenlist);
            navigationres.add(object);
        }
        return Message.success().add("navigation", navigationres);
    }

    @Override
    public void getEmployeeExcelTemplate(HttpServletResponse response) {
        try {
            //设置文件的类型
            response.setContentType("multipart/form-data");
            // 确保弹出下载对话框
            response.setHeader("Content-disposition", "attachment; filename=" + new String("template_employee.xlsx".getBytes("utf-8"), "iso-8859-1"));
            Resource resource = resourceLoader.getResource("classpath:static" + File.separator + "template_employee.xlsx");
            Assert.isTrue(resource.exists(), "文件不存在:" + "template_employee.xlsx");
            InputStream inputStream = resource.getInputStream();
            OutputStream outputStream = response.getOutputStream();
            int length;
            while ((length = inputStream.read()) != -1) {
                outputStream.write(length);
            }
            inputStream.close();
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void getUserExcelTemplate(HttpServletResponse response) {
        try {
            //设置文件的类型
            response.setContentType("multipart/form-data");
            // 确保弹出下载对话框
            response.setHeader("Content-disposition", "attachment; filename=" + new String("template_user.xlsx".getBytes("utf-8"), "iso-8859-1"));
            Resource resource = resourceLoader.getResource("classpath:static" + File.separator + "template_user.xlsx");
            Assert.isTrue(resource.exists(), "文件不存在:" + "template_user.xlsx");
            InputStream inputStream = resource.getInputStream();
            OutputStream outputStream = response.getOutputStream();
            int length;
            while ((length = inputStream.read()) != -1) {
                outputStream.write(length);
            }
            inputStream.close();
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void getMenuExcelTemplate(HttpServletResponse response) {
        try {
            //设置文件的类型
            response.setContentType("multipart/form-data");
            // 确保弹出下载对话框
            response.setHeader("Content-disposition", "attachment; filename=" + new String("template_menu.xlsx".getBytes("utf-8"), "iso-8859-1"));
            Resource resource = resourceLoader.getResource("classpath:static" + File.separator + "template_menu.xlsx");
            Assert.isTrue(resource.exists(), "文件不存在:" + "template_menu.xlsx");
            InputStream inputStream = resource.getInputStream();
            OutputStream outputStream = response.getOutputStream();
            int length;
            while ((length = inputStream.read()) != -1) {
                outputStream.write(length);
            }
            inputStream.close();
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void getStroeExcelTemplate(HttpServletResponse response) {
        try {
            //设置文件的类型
            response.setContentType("multipart/form-data");
            // 确保弹出下载对话框
            response.setHeader("Content-disposition", "attachment; filename=" + new String("template_store.xlsx".getBytes("utf-8"), "iso-8859-1"));
            Resource resource = resourceLoader.getResource("classpath:static" + File.separator + "template_store.xlsx");
            Assert.isTrue(resource.exists(), "文件不存在:" + "template_store.xlsx");
            InputStream inputStream = resource.getInputStream();
            OutputStream outputStream = response.getOutputStream();
            int length;
            while ((length = inputStream.read()) != -1) {
                outputStream.write(length);
            }
            inputStream.close();
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void getOrderExcelTemplate(HttpServletResponse response) {
        try {
            //设置文件的类型
            response.setContentType("multipart/form-data");
            // 确保弹出下载对话框
            response.setHeader("Content-disposition", "attachment; filename=" + new String("template_order.xlsx".getBytes("utf-8"), "iso-8859-1"));
            Resource resource = resourceLoader.getResource("classpath:static" + File.separator + "template_order.xlsx");
            Assert.isTrue(resource.exists(), "文件不存在:" + "template_order.xlsx");
            InputStream inputStream = resource.getInputStream();
            OutputStream outputStream = response.getOutputStream();
            int length;
            while ((length = inputStream.read()) != -1) {
                outputStream.write(length);
            }
            inputStream.close();
            outputStream.flush();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
