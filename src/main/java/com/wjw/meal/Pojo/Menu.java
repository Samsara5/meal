package com.wjw.meal.Pojo;

public class Menu {
    private String mid;

    private String mname;

    private String mmateria;

    private String mpirce;

    private String mnumber;

    private Integer mischara;

    private Integer mtype;

    private String mimageurl;

    public String getMid() {
        return mid;
    }

    public void setMid(String mid) {
        this.mid = mid == null ? null : mid.trim();
    }

    public String getMname() {
        return mname;
    }

    public void setMname(String mname) {
        this.mname = mname == null ? null : mname.trim();
    }

    public String getMmateria() {
        return mmateria;
    }

    public void setMmateria(String mmateria) {
        this.mmateria = mmateria == null ? null : mmateria.trim();
    }

    public String getMpirce() {
        return mpirce;
    }

    public void setMpirce(String mpirce) {
        this.mpirce = mpirce == null ? null : mpirce.trim();
    }

    public String getMnumber() {
        return mnumber;
    }

    public void setMnumber(String mnumber) {
        this.mnumber = mnumber == null ? null : mnumber.trim();
    }

    public Integer getMischara() {
        return mischara;
    }

    public void setMischara(Integer mischara) {
        this.mischara = mischara;
    }

    public Integer getMtype() {
        return mtype;
    }

    public void setMtype(Integer mtype) {
        this.mtype = mtype;
    }

    public String getMimageurl() {
        return mimageurl;
    }

    public void setMimageurl(String mimageurl) {
        this.mimageurl = mimageurl == null ? null : mimageurl.trim();
    }
}