package com.wjw.meal.Pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import java.util.Date;
import java.util.List;

/**
 * @author wujiawei
 * @version 1.0
 * @Description
 * @Date 2021/2/25 17:18
 */
public class OrderPojo {
    private String oid;

    private String uid;

    private List<OrderContent> content;

    private String price;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date createtime;

    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone = "GMT+8")
    private Date finshtime;

    private Integer state;

    public String getOid() {
        return oid;
    }

    public void setOid(String oid) {
        this.oid = oid;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }

    public List<OrderContent> getContent() {
        return content;
    }

    public void setContent(List<OrderContent> content) {
        this.content = content;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Date getFinshtime() {
        return finshtime;
    }

    public void setFinshtime(Date finshtime) {
        this.finshtime = finshtime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }
}
