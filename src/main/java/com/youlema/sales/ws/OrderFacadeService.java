package com.youlema.sales.ws;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.fdo.OrderBillFdo;
import com.yolema.tbss.ext.facade.result.OrderBillResult;
import com.youlema.sales.service.OrderService.OrderQueryCondition;

@Service
public class OrderFacadeService {
    
//    private OrderBillFacade orderBillFacade;
    
	public OrderBillResult queryOrderBillResult(OrderQueryCondition condition){
	    OrderBillResult result = new OrderBillResult();
	    
	    result.setSuccess(true);
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
}
