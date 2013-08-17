package com.youlema.sales.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.fdo.order.OrderCustomFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductFdo;
import com.youlema.sales.meta.BusinessType;
import com.youlema.sales.meta.ProductInfo;
import com.youlema.sales.service.OrderService;
import com.youlema.sales.service.ProductService;

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

        List<TourProductFdo> productFdos = (List<TourProductFdo>) (info.getProductFdos() == null ? Collections.emptyList(): info.getProductFdos());
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
    public void book(@RequestParam(value = "productId") long productId, HttpServletRequest request,
            HttpServletResponse response) throws IOException {
        String[] customerList = ServletRequestUtils.getStringParameters(request, "customerList");
        String[] planeTicketList = ServletRequestUtils.getStringParameters(request, "airTicketList");
        String[] hotelList = ServletRequestUtils.getStringParameters(request, "hotelList");
        String[] extraInfo = ServletRequestUtils.getStringParameters(request, "extraInfo");

        OrderCustomFdo fdo = new OrderCustomFdo();
        for (int i = 0; i < customerList.length; i++) {
            String name = customerList[i];
            String planTicket = planeTicketList[i];
            String hotel = hotelList[i];
            String extra = extraInfo[i];

            // fdo.setName(name);
            // fdo.set
        }
        JsonUtils.writeToJson(true, response);

    }
}
