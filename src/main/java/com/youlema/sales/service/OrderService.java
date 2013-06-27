package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.fdo.OrderBillFdo;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.result.OrderBillResult;
import com.youlema.sales.meta.LeaveStatus;
import com.youlema.sales.meta.OrderType;
import com.youlema.sales.meta.OrderVo;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.ws.OrderFacadeService;
import com.youlema.sales.ws.ProductFacadeService;

/**
 * 订单相关服务
 * 
 * @author user
 * 
 */
@Service
public class OrderService {
    @Resource
    private OrderFacadeService orderFacadeService;
    @Resource
    private ProductFacadeService productFacadeService;

    /**
     * 根据订单状态，合同状态，出发状态，订单类型四个条件查询
     * 
     * @param orderStatus
     * @param contractStatus
     * @param startStatus
     * @param orderType
     * @return
     */
    public SearchResult<OrderVo> queryOrders(OrderQueryCondition condition) {
        OrderBillResult billResult = orderFacadeService.queryOrderBillResult(condition);

        List<OrderBillFdo> list = billResult.getList();
        List<OrderVo> vos = new ArrayList<OrderVo>();
        for (OrderBillFdo orderBillFdo : list) {
            Long productId = orderBillFdo.getProductId();
            TourProductFdo product = productFacadeService.getProduct(productId);
            vos.add(OrderVo.fromFdo(orderBillFdo, product));
        }
        return new SearchResult<OrderVo>(list.size(), vos);
    }

    /**
     * 查询条件集合
     * 
     * @author user
     */
    public static class OrderQueryCondition {

        Date beginScheduledTime;
        Date endScheduledTime;
        String queryText;
        String orderStatus;
        String contractStatus;
        LeaveStatus startStatus;
        OrderType orderType;

        public Date getBeginScheduledTime() {
            return beginScheduledTime;
        }

        public Date getEndScheduledTime() {
            return endScheduledTime;
        }

        public String getQueryText() {
            return queryText;
        }

        public String getOrderStatus() {
            return orderStatus;
        }

        public String getContractStatus() {
            return contractStatus;
        }

        public LeaveStatus getLeaveStatus() {
            return startStatus;
        }

        public OrderType getOrderType() {
            return orderType;
        }

        public void setBeginScheduledTime(Date beginScheduledTime) {
            this.beginScheduledTime = beginScheduledTime;
        }

        public void setEndScheduledTime(Date endScheduledTime) {
            this.endScheduledTime = endScheduledTime;
        }

        public void setQueryText(String queryText) {
            this.queryText = queryText;
        }

        public void setOrderStatus(String orderStatus) {
            this.orderStatus = orderStatus;
        }

        public void setContractStatus(String contractStatus) {
            this.contractStatus = contractStatus;
        }

        public void setLeaveStatus(LeaveStatus startStatus) {
            this.startStatus = startStatus;
        }

        public void setOrderType(OrderType orderType) {
            this.orderType = orderType;
        }
    }

    public boolean confirmOrder(long orderId) {
        return orderFacadeService.confirm(orderId);
    }

    public OrderVo getOrderById(long orderId) {
        OrderBillFdo fdo = orderFacadeService.getOrderFdo(orderId);
        if (fdo == null) {
            return null;
        }
        Long productId = fdo.getProductId();
        TourProductFdo product = productFacadeService.getProduct(productId);
        return OrderVo.fromFdo(fdo, product);
    }

}
