package com.youlema.sales.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.meta.FreeTravelProductItem;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.FreeTravelService;

@Controller
@RequestMapping("/ziyouxing")
public class FreeTravelController {
    @Resource
    private FreeTravelService freeTravelService;
    /**
     * 自由行首页
     * @return
     */
    @RequestMapping("")
    public String main(ModelMap modelMap){
        SearchResult<FreeTravelProductItem> searchResult = freeTravelService.queryFreeTravelProducts(null);
        modelMap.put("result", searchResult);
        
        return "free-travel";
    }
    @RequestMapping("/detail")
    public String detail(@RequestParam("id")long id , ModelMap modelMap){
        
        return "free-travel-view";
    }
    
    
}
