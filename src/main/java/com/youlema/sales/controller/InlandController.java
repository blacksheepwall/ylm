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

@Controller
@RequestMapping("/guoneiyou")
public class InlandController {
    @Resource
    private ProductService productService;

    @RequestMapping("")
    public String main(ModelMap modelMap) {
        ProductService.QueryCondition condition = new QueryCondition();
        condition.setProductType(1);
        List<Region> regions = productService.listInlandRegions();
        SearchResult<ProductItem> result = productService.query(condition, 1, 20);
        modelMap.put("productType", "outbound");
        modelMap.put("result", result);
        modelMap.put("regions", regions);
        return "alland-travel";
    }

}
