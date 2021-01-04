package com.wjw.meal.Utils;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

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
    public static String ListToString(List<String> format){
        String content = "";
        for (String s:format) {
            content = content+s+",";
        }
        return content;
    }

    public static String getUUID(){
        return UUID.randomUUID().toString();
    }
}
