package com.youlema.sales.controller;

import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.meta.OrderType;
import com.youlema.sales.meta.OrderVo;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.OrderService;
import com.youlema.sales.service.OrderService.OrderQueryCondition;
import com.youlema.sales.utils.Utils;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Resource
    private OrderService orderService;

    @RequestMapping("info")
    public String orderInfo(@RequestParam("id") long orderId) {
        return "news";
    }

    /**
     * 
     * @return
     * @throws ServletRequestBindingException
     */
    @RequestMapping("")
    public String queryOrders(HttpServletRequest request, ModelMap modelMap) throws ServletRequestBindingException {
        Date beginScheduledTime = Utils.parseDate(ServletRequestUtils.getStringParameter(request, "beginTime"),
                "yyyy-MM-dd");
        Date endScheduledTime = Utils.parseDate(ServletRequestUtils.getStringParameter(request, "endTime"),
                "yyyy-MM-dd");
        String queryText = ServletRequestUtils.getStringParameter(request, "queryText");
        String orderStatus = ServletRequestUtils.getStringParameter(request, "orderStatus");
        String contractStatus = ServletRequestUtils.getStringParameter(request, "contractStatus");
        String startStatus = ServletRequestUtils.getStringParameter(request, "startStatus");
        OrderType orderType = OrderType.fromStringValue(ServletRequestUtils.getStringParameter(request, "orderType"));
        OrderQueryCondition condition = new OrderQueryCondition();
        condition.setBeginScheduledTime(beginScheduledTime);
        condition.setEndScheduledTime(endScheduledTime);
        condition.setQueryText(queryText);
        condition.setOrderStatus(orderStatus);
        condition.setContractStatus(contractStatus);
        condition.setStartStatus(startStatus);
        condition.setOrderType(orderType);

        SearchResult<OrderVo> orders = orderService.queryOrders(condition);
        modelMap.put("orders", orders);
        return "order-manage";
    }

    @RequestMapping("download")
    public void downloadNote(@RequestParam("id") long orderId, HttpServletResponse response) throws IOException {
        response.setContentType("APPLICATION/msword");
        String fileName = new String(("出团通知_" + orderId + ".doc").getBytes("utf-8"), "iso-8859-1");
        response.setHeader("Content-Disposition", "attachment;   filename=" + fileName);
        ServletOutputStream outputStream = response.getOutputStream();
        response.getOutputStream().flush();
        response.getWriter().flush();
        outputStream.close();
    }

}
