package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.Date;

/**
 * 订单详情Vo
 * 
 * @author user
 * 
 */
public class OrderDetailVo extends OrderVo {
    // 联系人电话
    private String contactMobile;
    // 团队编号
    private String teamNumber;
    // 产品经理
    private String productManager;
    // 团队计调
    private String coordinator;
    // 预定人数
    private int subscribeCount;
    // 锁定状态
    private String lockStatus;
    // 订单费用
    private BigDecimal orderPrice;
    // 已付金额
    private BigDecimal paidPrice;
    // 未付金额
    private BigDecimal notPaid;

    // 截至付款日期
    private Date finalPayDate;

    // 创建时间
    private Date createTime;
    // 创建人
    private String createOperator;
    // 订单备注
    private String orderMemo;
    // 出发日期
    private Date leaveDate;

    public BigDecimal getNotPaid() {
        return notPaid;
    }

    public void setNotPaid(BigDecimal notPaid) {
        this.notPaid = notPaid;
    }

    public Date getLeaveDate() {
        return leaveDate;
    }

    public void setLeaveDate(Date leaveDate) {
        this.leaveDate = leaveDate;
    }

    // 游客列表
    private SearchResult<CustomerVo> customers;

    public SearchResult<CustomerVo> getCustomers() {
        return customers;
    }

    public void setCustomers(SearchResult<CustomerVo> customers) {
        this.customers = customers;
    }

    public String getTeamNumber() {
        return teamNumber;
    }

    public void setTeamNumber(String teamNumber) {
        this.teamNumber = teamNumber;
    }

    public String getProductManager() {
        return productManager;
    }

    public void setProductManager(String productManager) {
        this.productManager = productManager;
    }

    public String getCoordinator() {
        return coordinator;
    }

    public void setCoordinator(String coordinator) {
        this.coordinator = coordinator;
    }

    public int getSubscribeCount() {
        return subscribeCount;
    }

    public void setSubscribeCount(int subscribeCount) {
        this.subscribeCount = subscribeCount;
    }

    public String getLockStatus() {
        return lockStatus;
    }

    public void setLockStatus(String lockStatus) {
        this.lockStatus = lockStatus;
    }

    public BigDecimal getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(BigDecimal orderPrice) {
        this.orderPrice = orderPrice;
    }

    public BigDecimal getPaidPrice() {
        return paidPrice;
    }

    public void setPaidPrice(BigDecimal paidPrice) {
        this.paidPrice = paidPrice;
    }

    public Date getFinalPayDate() {
        return finalPayDate;
    }

    public void setFinalPayDate(Date finalPayDate) {
        this.finalPayDate = finalPayDate;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCreateOperator() {
        return createOperator;
    }

    public void setCreateOperator(String createOperator) {
        this.createOperator = createOperator;
    }

    public String getOrderMemo() {
        return orderMemo;
    }

    public void setOrderMemo(String orderMemo) {
        this.orderMemo = orderMemo;
    }

    public String getContactMobile() {
        return contactMobile;
    }

    public void setContactMobile(String contactMobile) {
        this.contactMobile = contactMobile;
    }
}
