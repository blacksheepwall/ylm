package com.youlema.sales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 出境游
 * @author user
 *
 */
@Controller
@RequestMapping("/chujingyou")
public class OutboundController {
    /**
     * 出境游首页
     * @return
     */
    @RequestMapping("")
    public String main(){
        return "outbound-travel";
    }
    
}
