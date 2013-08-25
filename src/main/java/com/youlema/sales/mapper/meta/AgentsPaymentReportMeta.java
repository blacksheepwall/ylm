package com.youlema.sales.mapper.meta;

import java.math.BigDecimal;

public class AgentsPaymentReportMeta {
    private long agentsId;
    private String mainTypeCode;
    private String minorTypeCode;
    private int yearOfStart;
    private int monthOfStart;
    private int orderCount;
    private int adultCount;
    private int childCount;
    private BigDecimal orderAmount;
    private BigDecimal settlementAmount;
    private BigDecimal paidAmount;
    private BigDecimal unpaidAmount;

    public int getMonthOfStart() {
        return monthOfStart;
    }

    public void setMonthOfStart(int monthOfStart) {
        this.monthOfStart = monthOfStart;
    }

    public BigDecimal getPaidAmount() {
        return paidAmount;
    }

    public void setPaidAmount(BigDecimal paidAmount) {
        this.paidAmount = paidAmount;
    }

    public BigDecimal getUnpaidAmount() {
        return unpaidAmount;
    }

    public void setUnpaidAmount(BigDecimal unpaidAmount) {
        this.unpaidAmount = unpaidAmount;
    }

    public long getAgentsId() {
        return agentsId;
    }

    public void setAgentsId(long agentsId) {
        this.agentsId = agentsId;
    }

    public String getMainTypeCode() {
        return mainTypeCode;
    }

    public void setMainTypeCode(String mainTypeCode) {
        this.mainTypeCode = mainTypeCode;
    }

    public String getMinorTypeCode() {
        return minorTypeCode;
    }

    public void setMinorTypeCode(String minorTypeCode) {
        this.minorTypeCode = minorTypeCode;
    }

    public int getYearOfStart() {
        return yearOfStart;
    }

    public void setYearOfStart(int yearOfStart) {
        this.yearOfStart = yearOfStart;
    }

    public int getOrderCount() {
        return orderCount;
    }

    public void setOrderCount(int orderCount) {
        this.orderCount = orderCount;
    }

    public int getAdultCount() {
        return adultCount;
    }

    public void setAdultCount(int adultCount) {
        this.adultCount = adultCount;
    }

    public int getChildCount() {
        return childCount;
    }

    public void setChildCount(int childCount) {
        this.childCount = childCount;
    }

    public BigDecimal getOrderAmount() {
        return orderAmount;
    }

    public void setOrderAmount(BigDecimal orderAmount) {
        this.orderAmount = orderAmount;
    }

    public BigDecimal getSettlementAmount() {
        return settlementAmount;
    }

    public void setSettlementAmount(BigDecimal settlementAmount) {
        this.settlementAmount = settlementAmount;
    }

}
