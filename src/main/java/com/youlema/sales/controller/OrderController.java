package com.youlema.sales.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.meta.LeaveStatus;
import com.youlema.sales.meta.OrderDetailVo;
import com.youlema.sales.meta.OrderVo;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.OrderService;
import com.youlema.sales.service.OrderService.OrderQueryCondition;
import com.youlema.sales.service.UserService;
import com.youlema.sales.utils.Utils;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Resource
    private OrderService orderService;
    @Resource
    private UserService userService;

    @RequestMapping("/info")
    public String orderInfo(@RequestParam("id") long orderId, ModelMap modelMap) {
        OrderDetailVo detailVo = orderService.getOrderById(orderId);
        modelMap.put("order", detailVo);
        modelMap.put("contracts", detailVo.getContractItems());
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
     * 取消游客
     * 
     * @return
     */
    @RequestMapping("/cancel")
    public String cancel(@RequestParam("id") long orderId, ModelMap modelMap) {
        OrderDetailVo detailVo = orderService.getOrderById(orderId);
        modelMap.put("order", detailVo);
        return "order-cancel-tourist";
    }

    /**
     * 提交取消订单请求
     * 
     * @param ids
     * @param cancelMemo
     * @param response
     * @throws IOException
     */
    @RequestMapping("/submitCancel")
    public void postCancel(@RequestParam("orderId") long orderId, @RequestParam("ids") String ids,
            @RequestParam(value = "cancelMemo", required = false, defaultValue = "") String cancelMemo,
            HttpServletResponse response) throws IOException {
        String[] strings = StringUtils.split(ids, ',');
        List<Long> custIds = new ArrayList<Long>(strings.length);
        for (String string : strings) {
            try {
                Long custId = Long.parseLong(string.trim());
                custIds.add(custId);
            } catch (Exception e) {
            }
        }
        orderService.cancelOrder(orderId, cancelMemo, custIds, userService.getCurrentUser());
        JsonUtils.writeToJson("success", response);
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
        String orderType = ServletRequestUtils.getStringParameter(request, "orderType");
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
