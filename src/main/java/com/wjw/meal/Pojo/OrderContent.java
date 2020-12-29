package com.wjw.meal.Pojo;

public class OrderContent {
    private String contentid;

    private String storename;

    private String ordernum;

    private String totalprice;

    public String getContentid() {
        return contentid;
    }

    public void setContentid(String contentid) {
        this.contentid = contentid == null ? null : contentid.trim();
    }

    public String getStorename() {
        return storename;
    }

    public void setStorename(String storename) {
        this.storename = storename == null ? null : storename.trim();
    }

    public String getOrdernum() {
        return ordernum;
    }

    public void setOrdernum(String ordernum) {
        this.ordernum = ordernum == null ? null : ordernum.trim();
    }

    public String getTotalprice() {
        return totalprice;
    }

    public void setTotalprice(String totalprice) {
        this.totalprice = totalprice == null ? null : totalprice.trim();
    }
}