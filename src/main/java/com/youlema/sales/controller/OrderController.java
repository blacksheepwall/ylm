package com.youlema.sales.controller;

import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.meta.LeaveStatus;
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
        return "order-manage-process";
    }

    /**
     * 订单列表主页
     * 
     * @return
     */
    @RequestMapping("")
    public String orderView() {
        return "order-manage";
    }

    /**
     * 确认订单
     * 
     * @param orderId
     * @param response
     * @throws IOException
     */
    @RequestMapping("/confirm")
    public String confirm(@RequestParam("id") long orderId, HttpServletResponse response) throws IOException {
        OrderVo vo = orderService.getOrderById(orderId);
        return "order-confirm";
    }

    /**
     * 查询订单列表
     * 
     * @return
     * @throws ServletRequestBindingException
     * @throws IOException
     */
    @RequestMapping("/queryOrders")
    public void queryOrders(HttpServletRequest request, HttpServletResponse response)
            throws ServletRequestBindingException, IOException {
        Date beginScheduledTime = Utils.parseDate(ServletRequestUtils.getStringParameter(request, "beginTime"),
                "yyyy-MM-dd");
        Date endScheduledTime = Utils.parseDate(ServletRequestUtils.getStringParameter(request, "endTime"),
                "yyyy-MM-dd");
        String queryText = ServletRequestUtils.getStringParameter(request, "queryText");
        String orderStatus = ServletRequestUtils.getStringParameter(request, "orderStatus");
        String contractStatus = ServletRequestUtils.getStringParameter(request, "contractStatus");
        int startStatus = ServletRequestUtils.getIntParameter(request, "leaveStatus", -1);
        OrderType orderType = OrderType.fromStringValue(ServletRequestUtils.getStringParameter(request, "orderType"));
        OrderQueryCondition condition = new OrderQueryCondition();
        condition.setBeginScheduledTime(beginScheduledTime);
        condition.setEndScheduledTime(endScheduledTime);
        condition.setQueryText(queryText);
        condition.setOrderStatus(orderStatus);
        condition.setContractStatus(contractStatus);
        condition.setLeaveStatus(LeaveStatus.fromIntValue(startStatus));
        condition.setOrderType(orderType);

        SearchResult<OrderVo> orders = orderService.queryOrders(condition);
        JsonUtils.writeToJson(orders, response);
    }

    @RequestMapping("/download")
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
