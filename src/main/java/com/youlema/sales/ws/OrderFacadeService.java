package com.youlema.sales.ws;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.OrderBillFacade;
import com.yolema.tbss.ext.facade.OrderCustomFacade;
import com.yolema.tbss.ext.facade.fdo.order.OrderBillFdo;
import com.yolema.tbss.ext.facade.result.OrderBillResult;
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
            return result.getList().get(0);
        }
        return null;
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
        // TODO 合同状态未知
        // String contractStatus = condition.getContractStatus();
        queryFdo.setOrderType(condition.getOrderType());
        return queryFdo;
    }

    /**
     * 取消订单
     * 
     * @param orderId
     */
    public void cancelOrder(long orderId, String cancelMemo, AgentsAccount account) {
        OrderBillFdo orderFdo = getOrderFdo(orderId);
        if (orderFdo != null) {
            orderFdo.setCancelMemo(cancelMemo);
            orderBillFacade.saveOrderCancel(orderFdo, account.getName());
        }
    }
}
