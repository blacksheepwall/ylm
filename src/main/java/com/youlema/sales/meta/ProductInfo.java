package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.yolema.tbss.ext.facade.fdo.product.ProductCompareFdo;
import com.youlema.sales.utils.VoField;

/**
 * 产品信息Bean
 * 
 * @author zhushijun
 * 
 */
public class ProductInfo {
    @VoField("getProductId")
    private long productId;

    @VoField("getLineName")
    private String title;
    @VoField("getSubtitle")
    private String subtitle;
    @VoField("getTourProductType")
    private String pdtType;
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
    @VoField("getProductNo")
    private String pdtCode;
    // TODO 页面上的悠乐马价格，究竟是哪个字段还不明确
    @VoField("getPrice")
    private BigDecimal price;
    @VoField("getLeaveCityTraffic")
    private String leaveTraffic;
    @VoField("getReturnCityTraffic")
    private String returnTraffic;
    @VoField("getAdultPrice")
    private BigDecimal adultPrice;
    @VoField("getChildPrice")
    private BigDecimal childPrice;
    @VoField("getKeyword")
    private String keyword;
    @VoField("getNumberOfPeoplePlan")
    private int numberOfPeoplePlan;
    @VoField("getBookNubmer")
    private int bookNubmer;
    @VoField("getImgUrl")
    private String imageUrl;
    @VoField("getProductCompareFdos")
    private List<ProductCompareFdo> productFdos;
    @VoField("getPriceOfSingleRoom")
    private BigDecimal priceOfSingleRoom = BigDecimal.ZERO;
    @VoField("getGmtLeave")
    private Date leaveDate;

    // TODO 保险单价未知
    private BigDecimal bxPrice = BigDecimal.TEN;
    @VoField("getDaysNight")
    private int daysNight;

    @VoField("getDaysDuring")
    private int daysDuring;

    public Date getLeaveDate() {
        return leaveDate;
    }

    public void setLeaveDate(Date leaveDate) {
        this.leaveDate = leaveDate;
    }

    public int getDaysNight() {
        return daysNight;
    }

    public void setDaysNight(int daysNight) {
        this.daysNight = daysNight;
    }

    public int getDaysDuring() {
        return daysDuring;
    }

    public void setDaysDuring(int daysDuring) {
        this.daysDuring = daysDuring;
    }

    public BigDecimal getBxPrice() {
        return bxPrice;
    }

    public void setBxPrice(BigDecimal bxPrice) {
        this.bxPrice = bxPrice;
    }

    public BigDecimal getPriceOfSingleRoom() {
        return priceOfSingleRoom;
    }

    public void setPriceOfSingleRoom(BigDecimal priceOfSingleRoom) {
        this.priceOfSingleRoom = priceOfSingleRoom;
    }

    public List<ProductCompareFdo> getProductFdos() {
        return productFdos;
    }

    public void setProductFdos(List<ProductCompareFdo> productFdos) {
        this.productFdos = productFdos;
    }

    public long getProductId() {
        return productId;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    public int getNumberOfPeoplePlan() {
        return numberOfPeoplePlan;
    }

    public void setNumberOfPeoplePlan(int numberOfPeoplePlan) {
        this.numberOfPeoplePlan = numberOfPeoplePlan;
    }

    public int getBookNubmer() {
        return bookNubmer;
    }

    public void setBookNubmer(int bookNubmer) {
        this.bookNubmer = bookNubmer;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }

    public BigDecimal getAdultPrice() {
        return adultPrice;
    }

    public void setAdultPrice(BigDecimal adultPrice) {
        this.adultPrice = adultPrice;
    }

    public BigDecimal getChildPrice() {
        return childPrice;
    }

    public void setChildPrice(BigDecimal childPrice) {
        this.childPrice = childPrice;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getLeaveTraffic() {
        return leaveTraffic;
    }

    public void setLeaveTraffic(String leaveTraffic) {
        this.leaveTraffic = leaveTraffic;
    }

    public String getReturnTraffic() {
        return returnTraffic;
    }

    public void setReturnTraffic(String returnTraffic) {
        this.returnTraffic = returnTraffic;
    }

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
