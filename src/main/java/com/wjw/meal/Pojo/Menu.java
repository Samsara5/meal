package com.wjw.meal.Pojo;

public class Menu {
    private String mid;

    private String mname;

    private String mmateria;

    private String mpirce;

    private String mnumber;

    private String mimageurl;

    private String mischara;

    private String mtypeid;

    private String mtypename;

    private String mnuit;

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

    public String getMimageurl() {
        return mimageurl;
    }

    public void setMimageurl(String mimageurl) {
        this.mimageurl = mimageurl == null ? null : mimageurl.trim();
    }

    public String getMischara() {
        return mischara;
    }

    public void setMischara(String mischara) {
        this.mischara = mischara == null ? null : mischara.trim();
    }

    public String getMtypeid() {
        return mtypeid;
    }

    public void setMtypeid(String mtypeid) {
        this.mtypeid = mtypeid == null ? null : mtypeid.trim();
    }

    public String getMtypename() {
        return mtypename;
    }

    public void setMtypename(String mtypename) {
        this.mtypename = mtypename == null ? null : mtypename.trim();
    }

    public String getMnuit() {
        return mnuit;
    }

    public void setMnuit(String mnuit) {
        this.mnuit = mnuit == null ? null : mnuit.trim();
    }
}