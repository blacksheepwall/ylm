package com.youlema.sales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/u")
@Controller
public class UserController {

    @RequestMapping("/manage")
    public String userManage(){
        return "manage";
    }
    
}
