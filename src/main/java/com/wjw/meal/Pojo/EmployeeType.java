package com.wjw.meal.Pojo;

public class EmployeeType {
    private Integer roleid;

    private String rolename;

    private String roleauthority;

    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    public String getRolename() {
        return rolename;
    }

    public void setRolename(String rolename) {
        this.rolename = rolename == null ? null : rolename.trim();
    }

    public String getRoleauthority() {
        return roleauthority;
    }

    public void setRoleauthority(String roleauthority) {
        this.roleauthority = roleauthority == null ? null : roleauthority.trim();
    }
}