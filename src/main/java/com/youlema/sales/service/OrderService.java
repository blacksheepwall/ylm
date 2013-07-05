package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.time.DateUtils;
import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.fdo.DictionaryFdo;
import com.yolema.tbss.ext.facade.fdo.OrderBillFdo;
import com.yolema.tbss.ext.facade.fdo.OrderCustomFdo;
import com.yolema.tbss.ext.facade.fdo.ShowProductFdo;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.result.OrderBillResult;
import com.youlema.sales.meta.CustomerVo;
import com.youlema.sales.meta.LeaveStatus;
import com.youlema.sales.meta.OrderDetailVo;
import com.youlema.sales.meta.OrderVo;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.meta.StatusCode;
import com.youlema.sales.meta.StatusObject;
import com.youlema.sales.meta.TypeCode;
import com.youlema.sales.meta.TypeObject;
import com.youlema.sales.meta.User;
import com.youlema.sales.utils.Utils;
import com.youlema.sales.ws.DictionaryFacadeService;
import com.youlema.sales.ws.OrderFacadeService;
import com.youlema.sales.ws.ProductFacadeService;

/**
 * 订单相关服务
 * 
 * @author user
 * 
 */
@Service
public class OrderService {
    @Resource
    private OrderFacadeService orderFacadeService;
    @Resource
    private ProductFacadeService productFacadeService;
    @Resource
    private DictionaryFacadeService dictionaryFacadeService;

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
        OrderBillResult billResult = orderFacadeService.queryOrderBillResult(condition);

        List<OrderBillFdo> list = billResult.getList();
        List<OrderVo> vos = new ArrayList<OrderVo>();
        for (OrderBillFdo orderBillFdo : list) {
            Long productId = orderBillFdo.getProductId();
            TourProductFdo product = productFacadeService.getProduct(productId);
            Date leaveDate = product.getGmtLeave();
            Date endDate = product.getGmtDayOfEnd();
            LeaveStatus leaveStatus = condition.getLeaveStatus();
            // 出发状态在内存中进行控制
            if (isMatching(leaveStatus, leaveDate, endDate)) {
                OrderVo vo = new OrderVo();
                fromBillFdo2Vo(orderBillFdo, product, vo);
                vos.add(vo);
            }
        }
        return new SearchResult<OrderVo>(vos.size(), vos);
    }

    /**
     * 从OrderBillFdo对象转换成页面显示VO对象
     * 
     * @param fdo
     * @param product
     * @param vo
     */
    private void fromBillFdo2Vo(OrderBillFdo fdo, TourProductFdo product, OrderVo vo) {
        Date leave = product.getGmtLeave();
        vo.setBeginDate(Utils.formatDate(leave, "yyyy-MM-dd"));
        vo.setContact(fdo.getContactPerson());
        // TODO 合同状态未知
        vo.setContractStatus("不知道合同状态");
        vo.setOrderId(fdo.getOrderId());
        vo.setOrderNumber(fdo.getBizOrderId());

        DictionaryFdo dic = dictionaryFacadeService.findDic(TypeCode.ORDER_TYPE.toString(), fdo.getOrderType());
        vo.setOrderType(new TypeObject<String>(TypeCode.ORDER_TYPE, dic.getDictionaryKey(), dic.getDictionaryValue()));

        vo.setProductId(fdo.getProductId());
        if (product != null) {
            vo.setProductName(product.getLineName());
        }
        vo.setScheduledTime(Utils.formatDate(fdo.getGmtCreate(), "yyyy-MM-dd"));

        DictionaryFdo statusDic = dictionaryFacadeService.findDic(StatusCode.ORDER_STATUS.toString(),
                fdo.getOrderStatus());
        vo.setStatus(new StatusObject<String>(StatusCode.ORDER_STATUS, statusDic.getDictionaryKey(), statusDic
                .getDictionaryValue()));
        // TODO 订单游客数量待确定
        int numOfOrder = product.getNumOfOrder();
        vo.setTravellerCount(String.valueOf(numOfOrder));
    }

    private static boolean isMatching(LeaveStatus leaveStatus, Date leaveDate, Date endDate) {
        if (leaveStatus == null) {
            return true;
        }
        switch (leaveStatus) {
        case COMPLETE:
            return endDate.getTime() > System.currentTimeMillis();
        case IN_THERE_DAYS:
            return (leaveDate.getTime() + DateUtils.MILLIS_PER_DAY * 3) > System.currentTimeMillis();
        case LEAVED:
            return leaveDate.getTime() > System.currentTimeMillis();
        }
        return true;
    }

    /**
     * 查询条件集合
     * 
     * @author user
     */
    public static class OrderQueryCondition {

        Date beginScheduledTime;
        Date endScheduledTime;
        String queryText;
        String orderStatus;
        String contractStatus;
        LeaveStatus startStatus;
        String orderType;

        public Date getBeginScheduledTime() {
            return beginScheduledTime;
        }

        public Date getEndScheduledTime() {
            return endScheduledTime;
        }

        public String getQueryText() {
            return queryText;
        }

        public String getOrderStatus() {
            return orderStatus;
        }

        public String getContractStatus() {
            return contractStatus;
        }

        public LeaveStatus getLeaveStatus() {
            return startStatus;
        }

        public String getOrderType() {
            return orderType;
        }

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

        public void setLeaveStatus(LeaveStatus startStatus) {
            this.startStatus = startStatus;
        }

        public void setOrderType(String orderType) {
            this.orderType = orderType;
        }
    }

    /**
     * 根据订单ID获取订单明细的VO，VO中包括游客列表
     * 
     * @param orderId
     * @return
     */
    public OrderDetailVo getOrderById(long orderId) {
        OrderBillFdo fdo = orderFacadeService.getOrderFdo(orderId);
        if (fdo == null) {
            return null;
        }
        Long productId = fdo.getProductId();
        TourProductFdo product = productFacadeService.getProduct(productId);
        ShowProductFdo showProduct = productFacadeService.getShowProductFdo(productId);
        if (product == null || showProduct == null) {
            return null;
        }
        OrderDetailVo vo = new OrderDetailVo();
        fromBillFdo2Vo(fdo, product, vo);
        vo.setCreateOperator(fdo.getSalesman());
        vo.setCreateTime(fdo.getGmtCreate());
        vo.setLockStatus(fdo.getIsLocked() ? "锁定" : "未锁定");
        vo.setOrderMemo(fdo.getMemo());
        vo.setContactMobile(fdo.getMobile());
        vo.setCoordinator(product.getProductClaimPersion());
//        vo.setFinalPayDate(fdo.getGmtEndOfPayment());
//        vo.setOrderPrice(fdo.getAmountPayable());
//        vo.setPaidPrice(fdo.getAmountPaid());
        vo.setProductManager(product.getProductManager());
        vo.setTeamNumber(showProduct.getProductNo());
        vo.setLeaveDate(showProduct.getStartDate());
//        vo.setNotPaid(fdo.getNoPayments());
        List<OrderCustomFdo> customerList = fdo.getOrderCustomBeanList();
        List<CustomerVo> vos = new ArrayList<CustomerVo>(customerList.size());
        for (OrderCustomFdo orderCustomFdo : customerList) {
            CustomerVo customerVo = CustomerVo.fromFdo(orderCustomFdo);
            vos.add(customerVo);
        }
        vo.setSubscribeCount(vos.size());
        vo.setCustomers(new SearchResult<CustomerVo>(vos.size(), vos));
        return vo;
    }

    /**
     * 取消整个订单
     * 
     * @param orderId
     * @param user
     */
    public void cancelOrder(long orderId, String cancelMemo, User user) {
        orderFacadeService.cancelOrder(orderId, cancelMemo, user.getAccount());
    }
}
