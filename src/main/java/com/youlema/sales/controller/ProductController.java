package com.youlema.sales.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.meta.BusinessType;
import com.youlema.sales.meta.ProductInfo;
import com.youlema.sales.service.OrderService;
import com.youlema.sales.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
    @Resource
    private ProductService productService;
    @Resource
    private OrderService orderService;

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

    @RequestMapping("/line")
    public String lineInfo(@RequestParam("id") long lineId, ModelMap modelMap) {
        return productDetailInfo(lineId, modelMap);
    }
    @RequestMapping("/book")
    public void book(@RequestParam(value = "productId") long productId, HttpServletRequest request,
            HttpServletResponse response) {
        String[] customerList = ServletRequestUtils.getStringParameters(request, "customerList");
        String[] planeTicketList = ServletRequestUtils.getStringParameters(request, "planeTicketList");
        String[] hotelList = ServletRequestUtils.getStringParameters(request, "hotelList");
        String[] extraInfo = ServletRequestUtils.getStringParameters(request, "extraInfo");
    }
}
