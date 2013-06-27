package com.youlema.sales.ws;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.OrderBillFacade;
import com.yolema.tbss.ext.facade.fdo.OrderBillFdo;
import com.yolema.tbss.ext.facade.result.OrderBillResult;
import com.youlema.sales.meta.LeaveStatus;
import com.youlema.sales.meta.OrderType;
import com.youlema.sales.service.OrderService.OrderQueryCondition;

@Service
public class OrderFacadeService {
    @Resource
    private OrderBillFacade orderBillFacade;
    
//    private OrderCustomFacade orderCustomFacade;

    public OrderBillResult queryOrderBillResult(OrderQueryCondition condition) {
        //TODO condition 和OrderBillFdo之间转换

        
        OrderBillResult result = new OrderBillResult();
        List<OrderBillFdo> foBillFdos = new ArrayList<OrderBillFdo>();
        OrderBillFdo fdo = new OrderBillFdo();
        fdo.setBizOrderId("YSL13050310010390");
        fdo.setProductId(1001L);
        fdo.setContactPerson("金鹿");
        fdo.setGmtCreate(new Date());
        fdo.setOrderId(12345678L);
        fdo.setOrderType("1");
        fdo.setOrderStatus("完成");
        foBillFdos.add(fdo);
        result.setList(foBillFdos);
        return result;
    }

    public boolean confirm(long orderId) {
        return false;
    }

    public OrderBillFdo getOrderFdo(long orderId) {
        OrderBillResult result = orderBillFacade.getById(orderId);
        if (result.isSuccess() && result.getList().size() > 0) {
            return result.getList().get(0);
        }
        return null;
    }
}
