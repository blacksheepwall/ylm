package com.youlema.sales.ws;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.OrderBillFacade;
import com.yolema.tbss.ext.facade.agents.OrderCustomFacade;
import com.yolema.tbss.ext.facade.fdo.order.OrderBillFdo;
import com.yolema.tbss.ext.facade.fdo.order.OrderCustomFdo;
import com.yolema.tbss.ext.facade.result.OrderBillResult;
import com.yolema.tbss.ext.facade.result.OrderCustomResult;
import com.youlema.sales.mapper.meta.AgentsAccount;
import com.youlema.sales.service.OrderService.OrderQueryCondition;

@Service
public class OrderFacadeService {
    @Resource
    private OrderBillFacade orderBillFacade;
    @Resource
    private OrderCustomFacade orderCustomFacade;

    public OrderBillResult queryOrderBillResult(OrderQueryCondition condition) {
        OrderBillFdo queryFdo = toQueryOrderBillFdo(condition);

        return orderBillFacade.queryPageList(queryFdo);
    }

    public OrderBillFdo getOrderFdo(long orderId) {
        OrderBillResult result = orderBillFacade.getById(orderId);
        if (result.isSuccess() && result.getList().size() > 0) {
            return result.getOrderBillBean();
        }
        return null;
    }
    
    public OrderBillResult getOrderBillResult(long orderId){
        OrderBillResult result = orderBillFacade.getById(orderId);
        return result;
    }

    /**
     * 从前端的OrderQueryCondition转化为查询FDO对象
     * 
     * @param condition
     * @return
     */
    private static OrderBillFdo toQueryOrderBillFdo(OrderQueryCondition condition) {
        OrderBillFdo queryFdo = new OrderBillFdo();
        queryFdo.setGmtSearchStart(condition.getBeginScheduledTime());
        queryFdo.setGmtSearchEnd(condition.getEndScheduledTime());
        String orderStatus = condition.getOrderStatus();
        queryFdo.setOrderStatus(orderStatus);
        queryFdo.setSearchKeyWords(condition.getQueryText());
        String contractStatus = condition.getContractStatus();
        if(contractStatus != null){
            queryFdo.setSalesBargainStatus(true);
        }
        queryFdo.setOrderType(condition.getOrderType());
        return queryFdo;
    }

    public boolean cancelCustomer(long orderId, List<Long> custIds) {
        for (Long cid : custIds) {
            OrderCustomResult result = orderCustomFacade.getById(cid);
            if (result != null) {
                OrderCustomFdo customFdo = result.getOrderCustomFdo();
                if (customFdo != null && !customFdo.getIsCanceled()) {
                    customFdo.setIsCanceled(true);
//                     orderCustomFacade.update(customFdo);
                }
            }
        }
        return true;
    }

    /**
     * 取消订单
     * 
     * @param orderId
     */
    public boolean cancelOrder(long orderId, String cancelMemo, AgentsAccount account) {
        OrderBillFdo orderFdo = getOrderFdo(orderId);
        if (orderFdo != null) {
            orderFdo.setCancelMemo(cancelMemo);
            orderBillFacade.saveOrderCancel(orderFdo, account.getName());
            return true;
        }
        return false;
    }
}
