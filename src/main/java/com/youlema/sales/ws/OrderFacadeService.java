package com.youlema.sales.ws;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.OrderBillFacade;
import com.yolema.tbss.ext.facade.agents.OrderCustomFacade;
import com.yolema.tbss.ext.facade.fdo.OrderBillFdo;
import com.yolema.tbss.ext.facade.fdo.OrderCustomFdo;
import com.yolema.tbss.ext.facade.result.OrderBillResult;
import com.yolema.tbss.ext.facade.result.OrderCustomResult;
import com.youlema.sales.meta.OrderType;
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

	/**
	 * 根据订单号查询游客列表
	 * 
	 * @param orderId
	 * @return
	 */
	public OrderCustomResult queryCustomerByOrderId(long orderId) {
		OrderCustomFdo fdo = new OrderCustomFdo();
		fdo.setOrderId(orderId);
		return orderCustomFacade.queryPageList(fdo);
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
	private static OrderBillFdo toQueryOrderBillFdo(
			OrderQueryCondition condition) {
		OrderBillFdo queryFdo = new OrderBillFdo();
		queryFdo.setGmtSearchStart(condition.getBeginScheduledTime());
		queryFdo.setGmtSearchEnd(condition.getEndScheduledTime());
		String orderStatus = condition.getOrderStatus();
		queryFdo.setOrderStatus(orderStatus);

		// TODO 出发状态未知
		// LeaveStatus leaveStatus = condition.getLeaveStatus();
		queryFdo.setSearchKeyWords(condition.getQueryText());
		// TODO 合同状态未知
		// String contractStatus = condition.getContractStatus();
		OrderType type = condition.getOrderType();
		queryFdo.setOrderType(type.stringValue());
		return queryFdo;
	}
}
