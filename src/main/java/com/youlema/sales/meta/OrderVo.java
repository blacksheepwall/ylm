package com.youlema.sales.meta;

import com.yolema.tbss.ext.facade.fdo.OrderBillFdo;
import com.youlema.sales.utils.Utils;

public class OrderVo {
    private String orderNumber;
    private long orderId;
    private OrderType orderType;
    private String productName;
    private long productId;
    private String beginDate;
    private String travellerCount;
    private String contact;
    private String scheduledTime;
    private String status;
    private String contractStatus;

    public String getOrderNumber() {
        return orderNumber;
    }

    public void setOrderNumber(String orderNumber) {
        this.orderNumber = orderNumber;
    }

    public long getOrderId() {
        return orderId;
    }

    public void setOrderId(long orderId) {
        this.orderId = orderId;
    }

    public OrderType getOrderType() {
        return orderType;
    }

    public void setOrderType(OrderType orderType) {
        this.orderType = orderType;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public long getProductId() {
        return productId;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public String getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(String beginDate) {
        this.beginDate = beginDate;
    }

    public String getTravellerCount() {
        return travellerCount;
    }

    public void setTravellerCount(String travellerCount) {
        this.travellerCount = travellerCount;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getScheduledTime() {
        return scheduledTime;
    }

    public void setScheduledTime(String scheduledTime) {
        this.scheduledTime = scheduledTime;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getContractStatus() {
        return contractStatus;
    }

    public void setContractStatus(String contractStatus) {
        this.contractStatus = contractStatus;
    }

    public static OrderVo fromFdo(OrderBillFdo fdo) {
        OrderVo vo = new OrderVo();
        // TODO 出团日期未知
         vo.setBeginDate("不知道日期");
        vo.setContact(fdo.getContactPerson());
        // TODO 合同状态未知
         vo.setContractStatus("不知道合同状态");

        vo.setOrderId(fdo.getOrderId());
        vo.setOrderNumber(fdo.getBizOrderId());
        vo.setOrderType(OrderType.fromStringValue(fdo.getOrderType()));
        // TODO 产品相关信息未知
        // vo.setProductId(productId)
         vo.setProductName("不知道什么产品");
        
        vo.setScheduledTime(Utils.formatDate(fdo.getGmtCreate(), "yyyy-MM-dd"));
        vo.setStatus(fdo.getOrderStatus());
        // TODO 订单游客数量未知
         vo.setTravellerCount("三大三小");
        return vo;
    }

}
