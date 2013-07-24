package com.youlema.sales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/zhengtuan")
public class GroupController {
    /**
     * 整团业务
     * @return
     */
    @RequestMapping("")
    public String main(){
        return "group-tour";
    }
}
