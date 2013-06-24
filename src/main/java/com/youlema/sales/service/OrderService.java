package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.fdo.OrderBillFdo;
import com.yolema.tbss.ext.facade.result.OrderBillResult;
import com.youlema.sales.meta.OrderType;
import com.youlema.sales.meta.OrderVo;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.ws.OrderFacade;

/**
 * 订单相关服务
 * 
 * @author user
 * 
 */
@Service
public class OrderService {
    @Resource
    private OrderFacade orderFacade;
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
	    OrderBillResult billResult = orderFacade.queryOrderBillResult(condition);
	    List<OrderBillFdo> list = billResult.getList();
	    List<OrderVo> vos = new ArrayList<OrderVo>();
	    for (OrderBillFdo orderBillFdo : list) {
	        vos.add(OrderVo.fromFdo(orderBillFdo));
        }
		return new SearchResult<OrderVo>(list.size(), vos);
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
