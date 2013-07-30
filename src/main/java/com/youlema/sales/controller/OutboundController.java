package com.youlema.sales.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.youlema.sales.meta.ProductItem;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.ProductService;

/**
 * 出境游
 * 
 * @author user
 * 
 */
@Controller
@RequestMapping("/chujingyou")
public class OutboundController {
    @Resource
    private ProductService productService;

    /**
     * 出境游首页
     * 
     * @return
     */
    @RequestMapping("")
    public String main(ModelMap modelMap) {
        ProductService.QueryCondition condition = null;
        SearchResult<ProductItem> result = productService.query(condition, 1, 20);
        modelMap.put("result", result);
        return "outbound-travel";
    }

}
