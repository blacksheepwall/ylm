package com.youlema.sales.mapper.meta;

import java.math.BigDecimal;
import java.util.Date;

public class AgentsPaymentFact {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.AGENTS_PAYMENT_FACT_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private Long agentsPaymentFactId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.AGENTS_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private Long agentsId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.ORDER_BILL_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private Long orderBillId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.PRODUCT_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private Long productId;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.PRODUCT_NO
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private String productNo;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.ORDER_CODE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private String orderCode;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.PRODUCT_NAME
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private String productName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.GMT_DAY_OF_START
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private Date gmtDayOfStart;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.ORDER_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private BigDecimal orderAmount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.SETTLEMENT_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private BigDecimal settlementAmount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.PAID_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private BigDecimal paidAmount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.UNPAID_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private BigDecimal unpaidAmount;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.GMT_DEADLINE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private Date gmtDeadline;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.MAIN_TYPE_CODE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private String mainTypeCode;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.MINOR_TYPE_CODE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private String minorTypeCode;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.TOTAL_ADULT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private Integer totalAdult;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.TOTAL_CHILD
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private Integer totalChild;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.YEAR_OF_START
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private Integer yearOfStart;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column AGENTS_PAYMENT_FACT.MONTH_OF_START
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    private Integer monthOfStart;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.AGENTS_PAYMENT_FACT_ID
     *
     * @return the value of AGENTS_PAYMENT_FACT.AGENTS_PAYMENT_FACT_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public Long getAgentsPaymentFactId() {
        return agentsPaymentFactId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.AGENTS_PAYMENT_FACT_ID
     *
     * @param agentsPaymentFactId the value for AGENTS_PAYMENT_FACT.AGENTS_PAYMENT_FACT_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setAgentsPaymentFactId(Long agentsPaymentFactId) {
        this.agentsPaymentFactId = agentsPaymentFactId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.AGENTS_ID
     *
     * @return the value of AGENTS_PAYMENT_FACT.AGENTS_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public Long getAgentsId() {
        return agentsId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.AGENTS_ID
     *
     * @param agentsId the value for AGENTS_PAYMENT_FACT.AGENTS_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setAgentsId(Long agentsId) {
        this.agentsId = agentsId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.ORDER_BILL_ID
     *
     * @return the value of AGENTS_PAYMENT_FACT.ORDER_BILL_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public Long getOrderBillId() {
        return orderBillId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.ORDER_BILL_ID
     *
     * @param orderBillId the value for AGENTS_PAYMENT_FACT.ORDER_BILL_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setOrderBillId(Long orderBillId) {
        this.orderBillId = orderBillId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.PRODUCT_ID
     *
     * @return the value of AGENTS_PAYMENT_FACT.PRODUCT_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public Long getProductId() {
        return productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.PRODUCT_ID
     *
     * @param productId the value for AGENTS_PAYMENT_FACT.PRODUCT_ID
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setProductId(Long productId) {
        this.productId = productId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.PRODUCT_NO
     *
     * @return the value of AGENTS_PAYMENT_FACT.PRODUCT_NO
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public String getProductNo() {
        return productNo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.PRODUCT_NO
     *
     * @param productNo the value for AGENTS_PAYMENT_FACT.PRODUCT_NO
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setProductNo(String productNo) {
        this.productNo = productNo;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.ORDER_CODE
     *
     * @return the value of AGENTS_PAYMENT_FACT.ORDER_CODE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public String getOrderCode() {
        return orderCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.ORDER_CODE
     *
     * @param orderCode the value for AGENTS_PAYMENT_FACT.ORDER_CODE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setOrderCode(String orderCode) {
        this.orderCode = orderCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.PRODUCT_NAME
     *
     * @return the value of AGENTS_PAYMENT_FACT.PRODUCT_NAME
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public String getProductName() {
        return productName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.PRODUCT_NAME
     *
     * @param productName the value for AGENTS_PAYMENT_FACT.PRODUCT_NAME
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setProductName(String productName) {
        this.productName = productName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.GMT_DAY_OF_START
     *
     * @return the value of AGENTS_PAYMENT_FACT.GMT_DAY_OF_START
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public Date getGmtDayOfStart() {
        return gmtDayOfStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.GMT_DAY_OF_START
     *
     * @param gmtDayOfStart the value for AGENTS_PAYMENT_FACT.GMT_DAY_OF_START
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setGmtDayOfStart(Date gmtDayOfStart) {
        this.gmtDayOfStart = gmtDayOfStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.ORDER_AMOUNT
     *
     * @return the value of AGENTS_PAYMENT_FACT.ORDER_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public BigDecimal getOrderAmount() {
        return orderAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.ORDER_AMOUNT
     *
     * @param orderAmount the value for AGENTS_PAYMENT_FACT.ORDER_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setOrderAmount(BigDecimal orderAmount) {
        this.orderAmount = orderAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.SETTLEMENT_AMOUNT
     *
     * @return the value of AGENTS_PAYMENT_FACT.SETTLEMENT_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public BigDecimal getSettlementAmount() {
        return settlementAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.SETTLEMENT_AMOUNT
     *
     * @param settlementAmount the value for AGENTS_PAYMENT_FACT.SETTLEMENT_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setSettlementAmount(BigDecimal settlementAmount) {
        this.settlementAmount = settlementAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.PAID_AMOUNT
     *
     * @return the value of AGENTS_PAYMENT_FACT.PAID_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public BigDecimal getPaidAmount() {
        return paidAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.PAID_AMOUNT
     *
     * @param paidAmount the value for AGENTS_PAYMENT_FACT.PAID_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setPaidAmount(BigDecimal paidAmount) {
        this.paidAmount = paidAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.UNPAID_AMOUNT
     *
     * @return the value of AGENTS_PAYMENT_FACT.UNPAID_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public BigDecimal getUnpaidAmount() {
        return unpaidAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.UNPAID_AMOUNT
     *
     * @param unpaidAmount the value for AGENTS_PAYMENT_FACT.UNPAID_AMOUNT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setUnpaidAmount(BigDecimal unpaidAmount) {
        this.unpaidAmount = unpaidAmount;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.GMT_DEADLINE
     *
     * @return the value of AGENTS_PAYMENT_FACT.GMT_DEADLINE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public Date getGmtDeadline() {
        return gmtDeadline;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.GMT_DEADLINE
     *
     * @param gmtDeadline the value for AGENTS_PAYMENT_FACT.GMT_DEADLINE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setGmtDeadline(Date gmtDeadline) {
        this.gmtDeadline = gmtDeadline;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.MAIN_TYPE_CODE
     *
     * @return the value of AGENTS_PAYMENT_FACT.MAIN_TYPE_CODE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public String getMainTypeCode() {
        return mainTypeCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.MAIN_TYPE_CODE
     *
     * @param mainTypeCode the value for AGENTS_PAYMENT_FACT.MAIN_TYPE_CODE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setMainTypeCode(String mainTypeCode) {
        this.mainTypeCode = mainTypeCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.MINOR_TYPE_CODE
     *
     * @return the value of AGENTS_PAYMENT_FACT.MINOR_TYPE_CODE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public String getMinorTypeCode() {
        return minorTypeCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.MINOR_TYPE_CODE
     *
     * @param minorTypeCode the value for AGENTS_PAYMENT_FACT.MINOR_TYPE_CODE
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setMinorTypeCode(String minorTypeCode) {
        this.minorTypeCode = minorTypeCode;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.TOTAL_ADULT
     *
     * @return the value of AGENTS_PAYMENT_FACT.TOTAL_ADULT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public Integer getTotalAdult() {
        return totalAdult;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.TOTAL_ADULT
     *
     * @param totalAdult the value for AGENTS_PAYMENT_FACT.TOTAL_ADULT
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setTotalAdult(Integer totalAdult) {
        this.totalAdult = totalAdult;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.TOTAL_CHILD
     *
     * @return the value of AGENTS_PAYMENT_FACT.TOTAL_CHILD
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public Integer getTotalChild() {
        return totalChild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.TOTAL_CHILD
     *
     * @param totalChild the value for AGENTS_PAYMENT_FACT.TOTAL_CHILD
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setTotalChild(Integer totalChild) {
        this.totalChild = totalChild;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.YEAR_OF_START
     *
     * @return the value of AGENTS_PAYMENT_FACT.YEAR_OF_START
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public Integer getYearOfStart() {
        return yearOfStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.YEAR_OF_START
     *
     * @param yearOfStart the value for AGENTS_PAYMENT_FACT.YEAR_OF_START
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setYearOfStart(Integer yearOfStart) {
        this.yearOfStart = yearOfStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column AGENTS_PAYMENT_FACT.MONTH_OF_START
     *
     * @return the value of AGENTS_PAYMENT_FACT.MONTH_OF_START
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public Integer getMonthOfStart() {
        return monthOfStart;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column AGENTS_PAYMENT_FACT.MONTH_OF_START
     *
     * @param monthOfStart the value for AGENTS_PAYMENT_FACT.MONTH_OF_START
     *
     * @mbggenerated Sun Aug 25 22:14:03 CST 2013
     */
    public void setMonthOfStart(Integer monthOfStart) {
        this.monthOfStart = monthOfStart;
    }
}