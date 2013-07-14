package com.youlema.sales.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 公告Controller
 * @author user
 *
 */
@RequestMapping("/bulletin")
public class BulletinController {

    /**
     * 公告内容
     * @param id
     * @return
     */
    @RequestMapping("/info")
    public String bulletinInfo(@RequestParam("id")long id){
        return null;
    }
    
}
