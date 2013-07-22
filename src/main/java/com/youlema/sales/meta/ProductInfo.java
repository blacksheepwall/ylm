package com.youlema.sales.meta;

import com.youlema.sales.utils.VoField;

/**
 * 产品信息Bean
 * 
 * @author zhushijun
 * 
 */
public class ProductInfo {
    @VoField("getProductItemName")
    private String title;
    @VoField("getSubtitle")
    private String subtitle;
    @VoField("getTourProductType")
    private String pdtType;
    @VoField("getDestination")
    private String destination;
    @VoField("getLeaveCity")
    private String leaveCity;
    @VoField("getTourCards")
    private String tourCards;
    @VoField("getProductManager")
    private String pdtManager;
    @VoField("getProductAssistant")
    private String pdtAssistant;
    @VoField("getProductManagerRecommend")
    private String pdtManagerRecommend;
    @VoField("getProductCode")
    private String pdtCode;

    public String getPdtCode() {
        return pdtCode;
    }

    public void setPdtCode(String pdtCode) {
        this.pdtCode = pdtCode;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public String getPdtType() {
        return pdtType;
    }

    public void setPdtType(String pdtType) {
        this.pdtType = pdtType;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getLeaveCity() {
        return leaveCity;
    }

    public void setLeaveCity(String leaveCity) {
        this.leaveCity = leaveCity;
    }

    public String getTourCards() {
        return tourCards;
    }

    public void setTourCards(String tourCards) {
        this.tourCards = tourCards;
    }

    public String getPdtManager() {
        return pdtManager;
    }

    public void setPdtManager(String pdtManager) {
        this.pdtManager = pdtManager;
    }

    public String getPdtAssistant() {
        return pdtAssistant;
    }

    public void setPdtAssistant(String pdtAssistant) {
        this.pdtAssistant = pdtAssistant;
    }

    public String getPdtManagerRecommend() {
        return pdtManagerRecommend;
    }

    public void setPdtManagerRecommend(String pdtManagerRecommend) {
        this.pdtManagerRecommend = pdtManagerRecommend;
    }

}
