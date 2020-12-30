package com.wjw.meal.Utils;


import java.text.SimpleDateFormat;
import java.util.Date;

public class NomalUtils {
    public static Date transferStringToDate(String time) {
        Date date = null;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");//定义一个formate
        try {
            date = simpleDateFormat.parse(time);//将formate型转化成Date数据类型
        } catch (Exception e) {
            e.printStackTrace();
        }
        return date;
    }
}
