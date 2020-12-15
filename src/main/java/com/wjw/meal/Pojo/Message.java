package com.wjw.meal.Pojo;

import java.util.HashMap;
import java.util.Map;

public class Message {
    private static int status;
    private static String msg;
    private Map<String, Object> dataMap = new HashMap<String, Object>();
    //快速返回成功或失败状态
    public static Message success() {
        Message result = new Message();
        result.setCode(200);
        result.setMsg("处理成功");
        return result;
    }
    public static Message fail() {
        Message result = new Message();
        result.setCode(400);
        result.setMsg("处理失败");
        return result;
    }
    //返回用户自定义的数据
    public Message add(String key1,Object value1 ) {
        Message message = new Message();
        message.getExtend().put(key1, value1);
        return message;
    }

    public int getCode() {
        return status;
    }
    public void setCode(int status) {
        Message.status = status;
    }
    public String getMsg() {
        return msg;
    }
    public void setMsg(String msg) {
        Message.msg = msg;
    }
    public Map<String, Object> getExtend() {
        return dataMap;
    }
    public void setExtend(Map<String, Object> dataMap) {
        this.dataMap=dataMap;
    }

}
