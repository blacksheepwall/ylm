package com.youlema.sales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@RequestMapping("/news")
@Controller
public class NewsController {
    @RequestMapping("/content")
    public String newsContent(@RequestParam("id") long newsId) {
        return "news-detail";
    }

}
