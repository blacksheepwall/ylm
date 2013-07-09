package com.youlema.sales.ws.mock;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.OrderBillFacade;
import com.yolema.tbss.ext.facade.fdo.order.ClientInfoFdo;
import com.yolema.tbss.ext.facade.fdo.order.OrderBillFdo;
import com.yolema.tbss.ext.facade.fdo.order.OrderCustomFdo;
import com.yolema.tbss.ext.facade.fdo.order.SalesBargainFdo;
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
        fdo.setContactPerson("联系人甲");
        fdo.setGmtCreate(new Date());
        fdo.setOrderId(12345678L);
        fdo.setOrderType("1");
        fdo.setIsLocked(false);
        fdo.setOrderStatus("完成");
        fdo.setMobile("13999999999");
        fdo.setSalesman("订单创建人甲");
        
        List<SalesBargainFdo> list = new ArrayList<SalesBargainFdo>();
        for (int i = 0; i < 10; i++) {
            SalesBargainFdo bo = new SalesBargainFdo();
            bo.setBargainNo("合同编号NO."+i);
            bo.setBargainSignPerson("签订人"+i);
            bo.setGmtSigned(new Date());
            bo.setMemo("合同备注"+i);
            bo.setOrderCustomId(1111L+i);
            bo.setOrderId(id);
            bo.setSalesBargainId(99999L);
            list.add(bo);
        }
        fdo.setSalesBargainList(list);
        
        ArrayList<OrderCustomFdo> orderCustomBeanList = new ArrayList<OrderCustomFdo>();
        
        for (int i = 0; i < 10; i++) {
            OrderCustomFdo custFdo = new OrderCustomFdo();
            custFdo.setMoneyOfExpense(BigDecimal.TEN);
            custFdo.setOrderCustomId(1101010L);
            custFdo.setCensusRegister("杭州");
            custFdo.setMemo("备注备注");
            custFdo.setMobile("13999999999");
            custFdo.setName("游客姓名"+i);
            custFdo.setPinyin("pinyinpinyin");
            custFdo.setSex(true);
            custFdo.setIsCanceled(false);
            custFdo.setBirthday("1899-01-01");
            custFdo.setPidNo("3300000000001212");
            custFdo.setGmtPidExpiration(new Date());
            custFdo.setGmtPidIssue(new Date());
            custFdo.setPidIssuePlace("萧山");
            orderCustomBeanList.add(custFdo);
        }
        
        fdo.setOrderCustomBeanList(orderCustomBeanList);
        foBillFdos.add(fdo);
        result.setSuccess(true);
        result.setList(foBillFdos);
        return result;
    }

    @Override
    public OrderBillResult getByTourProductId(Long id) {
        throw new UnsupportedOperationException();
        
    }

    @Override
    public BaseResult orderReceiveReturn(String freezeCode, Long orderId, String opeartor) {
        throw new UnsupportedOperationException();
    }

    @Override
    public BaseResult updateCreateRefundFormReturn(Long orderId, BigDecimal refundMoney, String operator) {
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
    public OrderBillResult saveOrderCancel(OrderBillFdo orderBillFdo, String operator) {
        //TODO 实现一个mock
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

    @Override
    public OrderBillResult getOrderBillView(Long arg0, ClientInfoFdo arg1) {
        throw new UnsupportedOperationException();
    }

    @Override
    public BaseResult refundReturnSuccess(Long arg0, BigDecimal arg1, String arg2, String arg3) {
        // TODO Auto-generated method stub
        return null;
    }

}
