package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.Date;

import com.youlema.sales.utils.VoField;

public class RefundItem {
    @VoField("getPaidFormId")
    private long id;
    @VoField("getApplyCode")
    private String remitNo;
    @VoField("getPaymentType")
    private String paymentType;
    @VoField("getMoneyOfPay")
    private BigDecimal amount;
    @VoField("getUsage")
    private String usage;

    private String usageName;
    @VoField("getApplicant")
    private String applicant;
    @VoField("getPaymentStatus")
    private String paymentStatus;

    private String paymentStatusName;
    @VoField("getGmtApply")
    private Date applyTime;

    public String getUsageName() {
        return usageName;
    }

    public void setUsageName(String usageName) {
        this.usageName = usageName;
    }

    public String getPaymentStatusName() {
        return paymentStatusName;
    }

    public void setPaymentStatusName(String paymentStatusName) {
        this.paymentStatusName = paymentStatusName;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getRemitNo() {
        return remitNo;
    }

    public void setRemitNo(String remitNo) {
        this.remitNo = remitNo;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String tradeType) {
        this.paymentType = tradeType;
    }

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public String getUsage() {
        return usage;
    }

    public void setUsage(String usage) {
        this.usage = usage;
    }

    public String getApplicant() {
        return applicant;
    }

    public void setApplicant(String applicant) {
        this.applicant = applicant;
    }

    public String getPaymentStatus() {
        return paymentStatus;
    }

    public void setPaymentStatus(String paymentStatus) {
        this.paymentStatus = paymentStatus;
    }

    public Date getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(Date applyTime) {
        this.applyTime = applyTime;
    }
}
