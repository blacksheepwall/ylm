package com.youlema.sales.meta;

import java.util.Date;

import com.yolema.tbss.ext.facade.fdo.OrderBillFdo;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
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

    public static OrderVo fromFdo(OrderBillFdo fdo, TourProductFdo product) {
        OrderVo vo = new OrderVo();
        Date leave = product.getGmtLeave();
        vo.setBeginDate(Utils.formatDate(leave, "yyyy-MM-dd"));
        vo.setContact(fdo.getContactPerson());
        // TODO 合同状态未知
        vo.setContractStatus("不知道合同状态");
        vo.setOrderId(fdo.getOrderId());
        vo.setOrderNumber(fdo.getBizOrderId());
        vo.setOrderType(OrderType.fromStringValue(fdo.getOrderType()));
        vo.setProductId(fdo.getProductId());
        if (product != null) {
            vo.setProductName(product.getLineName());
        }
        vo.setScheduledTime(Utils.formatDate(fdo.getGmtCreate(), "yyyy-MM-dd"));
        vo.setStatus(fdo.getOrderStatus());
        // TODO 订单游客数量待确定
        int numOfOrder = product.getNumOfOrder();
        vo.setTravellerCount(String.valueOf(numOfOrder));
        return vo;
    }

}
