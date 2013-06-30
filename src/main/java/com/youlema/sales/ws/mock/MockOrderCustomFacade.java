package com.youlema.sales.ws.mock;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.agents.OrderCustomFacade;
import com.yolema.tbss.ext.facade.fdo.OrderCustomFdo;
import com.yolema.tbss.ext.facade.result.OrderCustomResult;

@Service
public class MockOrderCustomFacade implements OrderCustomFacade {

	@Override
	public OrderCustomResult queryPageList(OrderCustomFdo orderCustomFdo) {
		OrderCustomResult result = new OrderCustomResult();
		
		List<OrderCustomFdo> list = new ArrayList<OrderCustomFdo>();
		
		OrderCustomFdo fdo = new OrderCustomFdo();
		fdo.setBirthday("1999-01-01");
		fdo.setGmtPidIssue(new Date());
		fdo.setExpenseMoney(BigDecimal.TEN);
		fdo.setMemo("备注备注备注");
		fdo.setMobile("13778888888");
		fdo.setGmtPidExpiration(new Date());
		fdo.setGmtPidIssue(new Date());
		fdo.setMoneyOfExpense(BigDecimal.TEN);
		fdo.setName("金鹿");
		fdo.setOrderCustomId(100001L);
		fdo.setOrderId(1111L);
		fdo.setPid("shenfenzheng");
		fdo.setPidIssuePlace("上海");
		fdo.setPinyin("jinlu");
		fdo.setPidNo("33010000000000");
		fdo.setSex(false);
		list.add(fdo);
		result.setList(list);
		
		
		return result;
		
	}

	@Override
	public OrderCustomResult getById(Long id) {
		throw new UnsupportedOperationException();
	}

	@Override
	public OrderCustomResult deleteBatchById(Long[] idArray) {
		throw new UnsupportedOperationException();
	}

	@Override
	public OrderCustomResult save(OrderCustomFdo orderCustomFdo) {
		throw new UnsupportedOperationException();
	}

	@Override
	public OrderCustomResult update(OrderCustomFdo orderCustomFdo) {
		throw new UnsupportedOperationException();
	}

	@Override
	public OrderCustomResult delete(OrderCustomFdo orderCustomFdo) {
		throw new UnsupportedOperationException();
	}

}
