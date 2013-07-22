package com.youlema.sales.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.meta.Bulletin;
import com.youlema.sales.service.BulletinService;

/**
 * 公告Controller
 * 
 * @author user
 * 
 */
@RequestMapping("/bulletin")
@Controller
public class BulletinController {
    @Resource
    private BulletinService bulletinService;

    /**
     * 公告内容
     * 
     * @param id
     * @return
     */
    @RequestMapping("/info")
    public String bulletinInfo(@RequestParam("id") long id, ModelMap modelMap) {
        Bulletin bulletin = bulletinService.getBulletinById(id);
        modelMap.put("bulletin", bulletin);
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
