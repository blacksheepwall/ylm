package com.youlema.sales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ziyouxing")
public class ZiyouxingController {
    /**
     * 自由行首页
     * @return
     */
    @RequestMapping("")
    public String main(){
        return "free-travel";
    }
    
    
}
