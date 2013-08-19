package com.youlema.sales.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletInputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.youlema.sales.mapper.meta.AgentsAccount;
import com.youlema.sales.meta.BusinessType;
import com.youlema.sales.meta.OrderSubmitMeta;
import com.youlema.sales.meta.ProductInfo;
import com.youlema.sales.service.OrderService;
import com.youlema.sales.service.ProductService;
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
        List<TourProductFdo> productFdos = (List<TourProductFdo>) (info.getProductFdos() == null ? Collections
                .emptyList() : info.getProductFdos());
        Map<Long, String> dateMap = new HashMap<Long, String>();

        SimpleDateFormat format = new SimpleDateFormat("MM-dd EEE");
        for (TourProductFdo tourProductFdo : productFdos) {
            StringBuilder builder = new StringBuilder();

            builder.append(format.format(tourProductFdo.getGmtLeave()));
            builder.append(" ").append(tourProductFdo.getTourProductNo());
            builder.append(" 剩余");
            builder.append(tourProductFdo.getNumberOfPeoplePlan()).append("人");
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
