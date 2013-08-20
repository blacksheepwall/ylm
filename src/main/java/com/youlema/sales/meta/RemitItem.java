package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.Date;

import com.youlema.sales.utils.VoField;

public class RemitItem {
    @VoField("getRemittanceFormId")
    private long id;
    @VoField("getRemittanceFormCode")
    private String remitNo;
    @VoField("getMoneyOfRemittance")
    private BigDecimal remitAmount;
    @VoField("getMemo")
    private String remitMemo;
    @VoField("getGmtRemittance")
    private Date remitDate;
    @VoField("getRemittanceStatus")
    private String status;
    @VoField("getGmtCreate")
    private Date checkDate;
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
    public BigDecimal getRemitAmount() {
        return remitAmount;
    }
    public void setRemitAmount(BigDecimal remitAmount) {
        this.remitAmount = remitAmount;
    }
    public String getRemitMemo() {
        return remitMemo;
    }
    public void setRemitMemo(String remitMemo) {
        this.remitMemo = remitMemo;
    }
    public Date getRemitDate() {
        return remitDate;
    }
    public void setRemitDate(Date remitDate) {
        this.remitDate = remitDate;
    }
    public String getStatus() {
        return status;
    }
    public void setStatus(String status) {
        this.status = status;
    }
    public Date getCheckDate() {
        return checkDate;
    }
    public void setCheckDate(Date checkDate) {
        this.checkDate = checkDate;
    }
    
}
