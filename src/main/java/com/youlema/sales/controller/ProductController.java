package com.youlema.sales.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.yolema.tbss.ext.facade.fdo.product.ProductCompareFdo;
import com.youlema.sales.mapper.meta.AgentsAccount;
import com.youlema.sales.meta.BusinessType;
import com.youlema.sales.meta.OrderSubmitMeta;
import com.youlema.sales.meta.ProductInfo;
import com.youlema.sales.meta.ProductItem;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.OrderService;
import com.youlema.sales.service.ProductService;
import com.youlema.sales.service.ProductService.QueryCondition;
import com.youlema.sales.service.UserService;

/**
 * 散拼产品Controller
 * 
 * @author user
 * 
 */
@Controller
@RequestMapping("/product")
public class ProductController {
    @Resource
    private ProductService productService;
    @Resource
    private OrderService orderService;
    @Resource
    private UserService userService;

    private static final int PAGE_SIZE = 20;

    /**
     * 产品详情页
     * 
     * @return
     */
    @RequestMapping("/detail")
    public String productDetailInfo(@RequestParam(value = "id") long productId, ModelMap modelMap) {
        modelMap.put("productId", productId);
        modelMap.put("type", BusinessType.LINE.name());

        ProductInfo info = productService.getProduct(productId);
        modelMap.put("pdt", info);
        return "product";
    }

    /**
     * 散拼预定页面
     * 
     * @param productId
     * @param modelMap
     * @return
     */
    @RequestMapping("/bookpage")
    public String showBookPage(@RequestParam(value = "id") long productId, ModelMap modelMap) {
        ProductInfo info = productService.getProductForBook(productId);
        modelMap.put("pdt", info);

        @SuppressWarnings("unchecked")
        List<ProductCompareFdo> productFdos = (List<ProductCompareFdo>) (info.getProductFdos() == null ? Collections
                .emptyList() : info.getProductFdos());
        Map<Long, String> dateMap = new HashMap<Long, String>();

        for (ProductCompareFdo tourProductFdo : productFdos) {
            StringBuilder builder = new StringBuilder();

            builder.append(tourProductFdo.getTimeOfStart());
            builder.append(" ").append(tourProductFdo.getTourProductNo());
            builder.append(" 剩余");
            builder.append(tourProductFdo.getRemainQuantity()).append("人");
            dateMap.put(tourProductFdo.getProductId(), builder.toString());
        }

        modelMap.put("dateList", dateMap.entrySet());

        return "product-book";
    }

    @RequestMapping("/line")
    public String lineInfo(@RequestParam("id") long lineId, ModelMap modelMap) {
        return productDetailInfo(lineId, modelMap);
    }

    @RequestMapping("/book")
    public void book(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String jsonStr = readString(request);
        OrderSubmitMeta orderBean = JSON.parseObject(jsonStr, OrderSubmitMeta.class);
        AgentsAccount account = userService.getCurrentAccount();
        String book = orderService.book(orderBean, account);
        JsonUtils.writeToJson(book, response);
    }
    
    @RequestMapping("/searchResult")
    public String searchResult(@RequestParam(value = "queryText", required = false) String queryText,
            @RequestParam(value = "leaveCity", required = false) String leaveCity, ModelMap modelMap) {
        modelMap.put("queryText", queryText);
        modelMap.put("leaveCity", leaveCity);
        return "search-result";
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
    @RequestMapping("/query")
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
            @RequestParam(value = "endDate", required = false) String endDate,
            @RequestParam(value = "productType", required = false, defaultValue = "-1") String productType,
            HttpServletResponse response) throws IOException {

        ProductService.QueryCondition condition = toCondition(leaveCity, queryText, days, priceRange, traffic,
                typeCode, startDate, priceOrder, startDateOrder, endDate);
        condition.setProductType(-1);
        if("GN".equalsIgnoreCase(productType)){
            condition.setProductType(1);
        }else if("CJ".equalsIgnoreCase(productType)){
            condition.setProductType(4);
        }else if("GT".equalsIgnoreCase(productType)){
            //港澳台不清楚在面处理
        }
        SearchResult<ProductItem> result = productService.queryProduct(condition, pageNo, PAGE_SIZE);
        JsonUtils.writeToJson(result, response);
    }

    private ProductService.QueryCondition toCondition(String leaveCity, String queryText, String days,
            String priceRange, String traffic, String typeCode, String startDate, String priceOrder,
            String startDateOrder, String endDate) {
        ProductService.QueryCondition condition = new QueryCondition();
        // 4是出境游
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
        // condition.setProductType(4);
        condition.setLeaveCity(leaveCity);
        condition.setDays(days);
        condition.setPriceRange(priceRange);
        condition.setTraffic(traffic);
        condition.setLineType(typeCode);
        return condition;
    }

    private static String readString(HttpServletRequest request) throws IOException {
        ServletInputStream in = request.getInputStream();
        BufferedReader reader = new BufferedReader(new InputStreamReader(in, "utf-8"));
        StringBuilder builder = new StringBuilder(500);
        while (true) {
            String string = reader.readLine();
            if (string == null) {
                break;
            }
            builder.append(string);
        }
        return builder.toString();
    }
}
