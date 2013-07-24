package com.youlema.sales.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.youlema.sales.meta.City;
import com.youlema.sales.meta.Region;
import com.youlema.sales.service.DateCount;
import com.youlema.sales.service.PriceRange;
import com.youlema.sales.service.ProductService;
import com.youlema.sales.service.TrafficType;

@Controller
@RequestMapping("/guoneiyou")
public class InlandController {
    @Resource
    private ProductService productService;

    @RequestMapping("")
    public String main(ModelMap modelMap) {
        List<Region> regions = productService.listInlandRegions();
        List<City> startCitys = productService.listStartCitys(null);

        modelMap.put("regions", regions);
        modelMap.put("startCitys", startCitys);
        modelMap.put("dates", DateCount.values());
        modelMap.put("prices", PriceRange.values());
        modelMap.put("traffics", TrafficType.values());
        return "inland-travel";
    }

}
