package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.stereotype.Service;

import com.youlema.sales.meta.OrderType;
import com.youlema.sales.meta.OrderVo;
import com.youlema.sales.meta.SearchResult;

/**
 * 订单相关服务
 * 
 * @author user
 * 
 */
@Service
public class OrderService {
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
		return new SearchResult<OrderVo>(0, new ArrayList<OrderVo>(0));
	}

	/**
	 * 查询条件集合
	 * @author user
	 */
	public static class OrderQueryCondition {
		
		Date beginScheduledTime;
		Date endScheduledTime;
		String queryText;
		String orderStatus;
		String contractStatus;
		String startStatus;
		OrderType orderType;
		
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

		public void setStartStatus(String startStatus) {
			this.startStatus = startStatus;
		}

		public void setOrderType(OrderType orderType) {
			this.orderType = orderType;
		}
	}

}
