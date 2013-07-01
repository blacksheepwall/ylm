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
    private static final org.slf4j.Logger LOGGER = org.slf4j.LoggerFactory.getLogger(MockOrderBillFacade.class);
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
		throw new UnsupportedOperationException();
	}

	@Override
	public BaseResult orderReceiveReturn(String freezeCode, Long orderId,
			String opeartor) {
		throw new UnsupportedOperationException();
	}

	@Override
	public BaseResult refundReturnSuccess(Long orderId, BigDecimal refundMoney,
			String operator) {
		throw new UnsupportedOperationException();
	}

	@Override
	public BaseResult updateCreateRefundFormReturn(Long orderId,
			BigDecimal refundMoney, String operator) {
		throw new UnsupportedOperationException();
	}

	@Override
	public OrderBillResult getOrderDetailById(Long bizId) {
		throw new UnsupportedOperationException();
	}

	@Override
	public OrderBillResult getOrderAndProductById(Long id) {
		throw new UnsupportedOperationException();
	}

	@Override
	public OrderBillResult getOrderReceiveForm(Long orderId, Long noticeId) {
		throw new UnsupportedOperationException();
	}

	@Override
	public OrderBillResult saveOrderCancel(OrderBillFdo orderBillFdo,
			String operator) {
	    LOGGER.info("取消订单 , user={}",operator);
	    return null;
	}

	@Override
	public OrderBillResult search(String queryStr) {
		throw new UnsupportedOperationException();
	}

	@Override
	public OrderBillResult queryPendingList(OrderBillFdo orderBillFdo) {
		throw new UnsupportedOperationException();
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
