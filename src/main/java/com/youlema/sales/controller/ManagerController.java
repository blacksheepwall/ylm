package com.youlema.sales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 管理中心Controller
 * @author zhushijun
 *
 */
@RequestMapping("/manage")
@Controller
public class ManagerController {

    /**
     * 管理中心首页
     * @return
     */
    @RequestMapping("")
    public String main(){
        return "manage";
    }
    /**
     * 信息修改
     * @return
     */
    @RequestMapping("/edit")
    public String userManage(){
        return "manage-edit-company";
    }
    /**
     * 新增系统用户
     * @return
     */
    @RequestMapping("/adduser")
    public String addUser(){
        return "manage-add-user";
    }
    /**
     * 系统用户管理
     * @return
     */
    @RequestMapping("/manageusers")
    public String manageUser(){
        return "manage-users";
    }
    /**
     * 系统设置
     * @return
     */
    @RequestMapping("/setup")
    public String systemSetup(){
        return "manage-system-setup";
    }
    /**
     * 游客列表
     * @return
     */
    @RequestMapping("/guests")
    public String guestList(){
        return "manage-guest-list";
    }
    /**
     * 生日提醒
     * @return
     */
    @RequestMapping("/birthday")
    public String birthday(){
        return "manage-birthday-remind";
    }
   
    
}
