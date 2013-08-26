package com.youlema.sales.meta;

import java.math.BigDecimal;

public class PaymentFactStatisticItem {
    private String mainType;
    private String mainTypeCode;
    private String minorType;
    private String minorTypeCode;
    private BigDecimal inPaymentDaysAmount = BigDecimal.ZERO;
    private BigDecimal outPaymentDaysAmount = BigDecimal.ZERO;
    private BigDecimal totalAmount = BigDecimal.ZERO;

    public String getMainType() {
        return mainType;
    }

    public void setMainType(String mainType) {
        this.mainType = mainType;
    }

    public String getMainTypeCode() {
        return mainTypeCode;
    }

    public void setMainTypeCode(String mainTypeCode) {
        this.mainTypeCode = mainTypeCode;
    }

    public String getMinorType() {
        return minorType;
    }

    public void setMinorType(String minorType) {
        this.minorType = minorType;
    }

    public String getMinorTypeCode() {
        return minorTypeCode;
    }

    public void setMinorTypeCode(String minorTypeCode) {
        this.minorTypeCode = minorTypeCode;
    }

    public BigDecimal getInPaymentDaysAmount() {
        return inPaymentDaysAmount;
    }

    public void setInPaymentDaysAmount(BigDecimal inPaymentDaysAmount) {
        this.inPaymentDaysAmount = inPaymentDaysAmount;
    }

    public BigDecimal getOutPaymentDaysAmount() {
        return outPaymentDaysAmount;
    }

    public void setOutPaymentDaysAmount(BigDecimal outPaymentDaysAmount) {
        this.outPaymentDaysAmount = outPaymentDaysAmount;
    }

    public BigDecimal getTotalAmount() {
        return totalAmount;
    }

    public void setTotalAmount(BigDecimal totalAmount) {
        this.totalAmount = totalAmount;
    }

}
