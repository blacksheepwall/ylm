package com.youlema.sales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 公告Controller
 * 
 * @author user
 * 
 */
@RequestMapping("/bulletin")
@Controller
public class BulletinController {

    /**
     * 公告内容
     * 
     * @param id
     * @return
     */
    @RequestMapping("/info")
    public String bulletinInfo(@RequestParam("id") long id) {
        return "news-detail";
    }

    /**
     * 公告列表页
     * 
     * @return
     */
    @RequestMapping("")
    public String bulletin() {
        return "news";
    }
}
