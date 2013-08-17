package com.youlema.sales.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.mapper.meta.ProductType;
import com.youlema.sales.meta.PlanItem;
import com.youlema.sales.meta.ProductItem;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.ProductService;
import com.youlema.sales.service.ProductService.QueryCondition;
import com.youlema.sales.service.ProductTypeService;

@Controller
@RequestMapping("/guoneiyou")
public class InlandController {
    @Resource
    private ProductService productService;
    @Resource
    private ProductTypeService productTypeService;

    private static final int PAGE_SIZE = 20;

    @RequestMapping("")
    public String main(ModelMap modelMap) {
        ProductService.QueryCondition condition = new QueryCondition();
        // 1是国内游
        condition.setProductType(1);
        List<ProductType> citys = productTypeService.listProductTypes();
        SearchResult<PlanItem> result = productService.queryPlan(condition, 1, 20);
        SearchResult<ProductItem> pdtResult = productService.queryProduct(condition, 1, 20);
        modelMap.put("productType", "guoneiyou");
        modelMap.put("productResult", pdtResult);
        modelMap.put("result", result);
        modelMap.put("citys", citys);
        return "alland-travel";
    }

    /**
     * 查询产品/团队
     * 
     * @param leaveCity
     * @param queryText
     * @param days
     * @param priceRange
     * @param traffic
     * @param pageNo
     * @param typeCode
     * @param startDate
     * @param priceOrder
     * @param startDateOrder
     * @param endDate
     * @param response
     * @throws IOException
     */
    @RequestMapping("/queryPdts")
    public void queryProducts(@RequestParam(value = "leaveCity", required = false) String leaveCity,
            @RequestParam(value = "queryText", required = false) String queryText,
            @RequestParam(value = "dateRange", required = false) String days,
            @RequestParam(value = "priceRange", required = false) String priceRange,
            @RequestParam(value = "traffic", required = false) String traffic,
            @RequestParam(value = "pageNo", required = false, defaultValue = "1") int pageNo,
            @RequestParam(value = "typeCode", required = false) String typeCode,
            @RequestParam(value = "startDate", required = false) String startDate,
            @RequestParam(value = "priceOrder", required = false) String priceOrder,
            @RequestParam(value = "startDateOrder", required = false) String startDateOrder,
            @RequestParam(value = "endDate", required = false) String endDate, HttpServletResponse response)
            throws IOException {

        ProductService.QueryCondition condition = toCondition(leaveCity, queryText, days, priceRange, traffic,
                typeCode, startDate, priceOrder, startDateOrder, endDate);

        SearchResult<ProductItem> result = productService.queryProduct(condition, pageNo, PAGE_SIZE);
        JsonUtils.writeToJson(result, response);
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
            @RequestParam(value = "queryText", required = false) String queryText,
            @RequestParam(value = "priceRange", required = false) String priceRange,
            @RequestParam(value = "traffic", required = false) String traffic,
            @RequestParam(value = "pageNo", required = false, defaultValue = "1") int pageNo,
            @RequestParam(value = "startDate", required = false) String startDate,
            @RequestParam(value = "typeCode", required = false) String typeCode,
            @RequestParam(value = "endDate", required = false) String endDate,
            @RequestParam(value = "priceOrder", required = false) String priceOrder,
            @RequestParam(value = "startDateOrder", required = false) String startDateOrder,
            HttpServletResponse response) throws IOException {

        ProductService.QueryCondition condition = toCondition(leaveCity, days, queryText, priceRange, traffic,
                startDate, typeCode, endDate, priceOrder, startDateOrder);
        SearchResult<PlanItem> result = productService.queryPlan(condition, pageNo, PAGE_SIZE);
        JsonUtils.writeToJson(result, response);
    }

    private ProductService.QueryCondition toCondition(String leaveCity, String days, String queryText,
            String priceRange, String traffic, String startDate, String typeCode, String endDate, String priceOrder,
            String startDateOrder) {
        ProductService.QueryCondition condition = new QueryCondition();
        if (StringUtils.isNotBlank(priceOrder)) {
            condition.setPriceOrderDesc("desc".equalsIgnoreCase(priceOrder));
        }
        if (StringUtils.isNotBlank(startDateOrder)) {
            condition.setStartDateOrderDesc("desc".equalsIgnoreCase(startDateOrder));
        }

        if (StringUtils.isNotBlank(startDate) || StringUtils.isNotBlank(endDate)) {
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
            if (StringUtils.isNotBlank(startDate)) {
                try {
                    condition.setStartDate(dateFormat.parse(startDate));
                } catch (ParseException e) {
                }
            }
            if (StringUtils.isNotBlank(endDate)) {
                try {
                    condition.setEndDate(dateFormat.parse(endDate));
                } catch (ParseException e) {
                }
            }
        }
        // 1是国内游
        condition.setProductType(1);
        condition.setLeaveCity(leaveCity);
        condition.setDays(days);
        condition.setPriceRange(priceRange);
        condition.setTraffic(traffic);
        condition.setLineType(typeCode);
        return condition;
    }
}
