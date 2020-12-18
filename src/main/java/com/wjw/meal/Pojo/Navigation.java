package com.wjw.meal.Pojo;

import java.util.List;

public class Navigation {
    private Integer id;

    private String itemname;

    private Integer pid;

    private Integer dirlevel;

    private String children;

    private String url;

    public void setChildren(String Childernlist){
        this.children = Childernlist == null ? null : Childernlist.trim();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getItemname() {
        return itemname;
    }

    public void setItemname(String itemname) {
        this.itemname = itemname == null ? null : itemname.trim();
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getDirlevel() {
        return dirlevel;
    }

    public void setDirlevel(Integer dirlevel) {
        this.dirlevel = dirlevel;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }
}