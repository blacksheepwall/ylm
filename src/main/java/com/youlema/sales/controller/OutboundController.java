package com.youlema.sales.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.youlema.sales.meta.ProductItem;
import com.youlema.sales.meta.Region;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.ProductService;
import com.youlema.sales.service.ProductService.QueryCondition;

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
        ProductService.QueryCondition condition = new QueryCondition();
        condition.setProductType(2);
        List<Region> regions = productService.listInlandRegions();
        SearchResult<ProductItem> result = productService.query(condition, 1, 20);
        modelMap.put("productType", "outbound");
        modelMap.put("result", result);
        modelMap.put("regions", regions);
        return "alland-travel";
    }

}
