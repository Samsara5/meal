package com.wjw.meal.Pojo;

import java.util.Date;

public class Store {
    private String stroeid;

    private String stroename;

    private Integer stroenumber;

    private Date stroetime;

    private Integer stroestate;

    private Integer storeman;

    public String getStroeid() {
        return stroeid;
    }

    public void setStroeid(String stroeid) {
        this.stroeid = stroeid == null ? null : stroeid.trim();
    }

    public String getStroename() {
        return stroename;
    }

    public void setStroename(String stroename) {
        this.stroename = stroename == null ? null : stroename.trim();
    }

    public Integer getStroenumber() {
        return stroenumber;
    }

    public void setStroenumber(Integer stroenumber) {
        this.stroenumber = stroenumber;
    }

    public Date getStroetime() {
        return stroetime;
    }

    public void setStroetime(Date stroetime) {
        this.stroetime = stroetime;
    }

    public Integer getStroestate() {
        return stroestate;
    }

    public void setStroestate(Integer stroestate) {
        this.stroestate = stroestate;
    }

    public Integer getStoreman() {
        return storeman;
    }

    public void setStoreman(Integer storeman) {
        this.storeman = storeman;
    }
}