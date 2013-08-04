package com.youlema.sales.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.meta.PlanItem;
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
        // 1是国内游
        condition.setProductType(1);
        List<Region> regions = productService.listInlandRegions();
        SearchResult<PlanItem> result = productService.queryPlan(condition, 1, 20);
        modelMap.put("productType", "outbound");
        modelMap.put("result", result);
        modelMap.put("regions", regions);
        return "alland-travel";
    }

    /**
     * 查询散拼计划列表
     * 
     * @return
     * @throws IOException
     */
    @RequestMapping("/query")
    public void queryProductItems(@RequestParam(value = "leaveCity", required = false) String leaveCity,
            @RequestParam(value = "dateRange", required = false) String days,
            @RequestParam(value = "priceRange", required = false) String priceRange,
            @RequestParam(value = "traffic", required = false) String traffic,
            @RequestParam(value = "pageNo", required = false, defaultValue = "1") int pageNo,
            @RequestParam(value = "pageSize", required = false, defaultValue = "20") int pageSize,
            HttpServletResponse response) throws IOException {

        ProductService.QueryCondition condition = new QueryCondition();
        // 1是国内游
        condition.setProductType(1);
        condition.setLeaveCity(leaveCity);
        condition.setDays(days);
        condition.setPriceRange(priceRange);
        condition.setTraffic(traffic);
        SearchResult<PlanItem> result = productService.queryPlan(condition, pageNo, pageSize);
        JsonUtils.writeToJson(result.getResultList(), response);
    }

}
