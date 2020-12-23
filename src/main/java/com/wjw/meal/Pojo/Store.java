package com.wjw.meal.Pojo;

import java.util.Date;

public class Store {
    private String stroeid;

    private String stroename;

    private String stroenumber;

    private String unit;

    private Date stroetime;

    private Integer stroestate;

    private String storeman;

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

    public String getStroenumber() {
        return stroenumber;
    }

    public void setStroenumber(String stroenumber) {
        this.stroenumber = stroenumber == null ? null : stroenumber.trim();
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
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

    public String getStoreman() {
        return storeman;
    }

    public void setStoreman(String storeman) {
        this.storeman = storeman == null ? null : storeman.trim();
    }
}