package com.yy.admin.service.util;

import com.yy.util.PageBean;

public class AdminPageBean extends PageBean {
    public AdminPageBean() {
    }

    public AdminPageBean(int nowPageIndex, int dataCount) {
        super(nowPageIndex, dataCount);
    }
    private Integer moduleId;
    private String roleName;

    public AdminPageBean(Integer moduleId, String roleName) {
        this.moduleId = moduleId;
        this.roleName = roleName;
    }

    public AdminPageBean(int nowPageIndex, int dataCount, Integer moduleId, String roleName) {
        super(nowPageIndex, dataCount);
        this.moduleId = moduleId;
        this.roleName = roleName;
    }

    public Integer getModuleId() {
        return moduleId;
    }

    public void setModuleId(Integer moduleId) {
        this.moduleId = moduleId;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
}
