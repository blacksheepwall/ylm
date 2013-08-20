package com.youlema.sales.meta;

import java.math.BigDecimal;

import com.youlema.sales.utils.VoField;

public class FinanceMeta {
    @VoField("getUnPaidTotal")
    BigDecimal unpay = BigDecimal.ZERO;
    @VoField("getAccountPeriod")
    BigDecimal unpayIndays = BigDecimal.ZERO;
    @VoField("getOutOfAccountPeriod")
    BigDecimal unpayOutdays = BigDecimal.ZERO;
    @VoField("getTotalOfTourists")
    int totalCustCount;
    @VoField("getTotalOfTouristsForYear")
    int custCountThisYear;
    @VoField("getOtherTotalOfTourists")
    int custCountFormerYear;

    public BigDecimal getUnpay() {
        return unpay;
    }

    public void setUnpay(BigDecimal unpay) {
        this.unpay = unpay;
    }

    public BigDecimal getUnpayIndays() {
        return unpayIndays;
    }

    public void setUnpayIndays(BigDecimal unpayIndays) {
        this.unpayIndays = unpayIndays;
    }

    public BigDecimal getUnpayOutdays() {
        return unpayOutdays;
    }

    public void setUnpayOutdays(BigDecimal unpayOutdays) {
        this.unpayOutdays = unpayOutdays;
    }

    public int getTotalCustCount() {
        return totalCustCount;
    }

    public void setTotalCustCount(int totalCustCount) {
        this.totalCustCount = totalCustCount;
    }

    public int getCustCountThisYear() {
        return custCountThisYear;
    }

    public void setCustCountThisYear(int custCountThisYear) {
        this.custCountThisYear = custCountThisYear;
    }

    public int getCustCountFormerYear() {
        return custCountFormerYear;
    }

    public void setCustCountFormerYear(int custCountFormerYear) {
        this.custCountFormerYear = custCountFormerYear;
    }
}
