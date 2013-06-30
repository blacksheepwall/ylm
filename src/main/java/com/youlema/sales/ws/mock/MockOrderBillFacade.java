package com.youlema.sales.ws.mock;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.OrderBillFacade;
import com.yolema.tbss.ext.facade.fdo.OrderBillFdo;
import com.yolema.tbss.ext.facade.result.BaseResult;
import com.yolema.tbss.ext.facade.result.OrderBillResult;

@Service
public class MockOrderBillFacade implements OrderBillFacade {

	@Override
	public OrderBillResult getById(Long id) {
		OrderBillResult result = new OrderBillResult();
		List<OrderBillFdo> foBillFdos = new ArrayList<OrderBillFdo>();
		OrderBillFdo fdo = new OrderBillFdo();
		fdo.setBizOrderId("YSL13050310010390");
		fdo.setProductId(1001L);
		fdo.setContactPerson("金鹿");
		fdo.setGmtCreate(new Date());
		fdo.setOrderId(id);
		fdo.setOrderType("1");
		fdo.setOrderStatus("完成");
		foBillFdos.add(fdo);
		result.setList(foBillFdos);
		return result;
	}

	@Override
	public OrderBillResult getByTourProductId(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BaseResult orderReceiveReturn(String freezeCode, Long orderId,
			String opeartor) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BaseResult refundReturnSuccess(Long orderId, BigDecimal refundMoney,
			String operator) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public BaseResult updateCreateRefundFormReturn(Long orderId,
			BigDecimal refundMoney, String operator) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderBillResult getOrderDetailById(Long bizId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderBillResult getOrderAndProductById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderBillResult getOrderReceiveForm(Long orderId, Long noticeId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderBillResult saveOrderCancel(OrderBillFdo orderBillFdo,
			String operator) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderBillResult search(String queryStr) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderBillResult queryPendingList(OrderBillFdo orderBillFdo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderBillResult queryPageList(OrderBillFdo orderBillFdo) {
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

}
