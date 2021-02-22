package com.wjw.meal.Utils;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * @author wujiawei
 * @version 1.0
 * @Date 2021/1/7 11:29
 * @Description NomalUtils
 */

public class NomalUtils {
    public static Date transferStringToDate(String time) {
        Date date = null;
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-mm-dd");//定义一个formate
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

    public static int StringToInt(String number){
        return Double.valueOf(number).intValue();
    }
}
