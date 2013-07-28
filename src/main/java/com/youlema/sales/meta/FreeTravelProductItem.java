package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.youlema.sales.utils.VoField;

public class FreeTravelProductItem {
    @VoField("getProductId")
    private long productId;
    @VoField("getProductItemName")
    private String title;
    @VoField("getSubtitle")
    private String subtitle;
    @VoField("getMinPrice")
    private BigDecimal price;
    @VoField("getLeaveCity")
    private String leaveCity;
    @VoField("getKeyWords")
    private String keywords;
    @VoField("getDaysDuring")
    private int dayCount;
    @VoField("getDaysNight")
    private int nightCount;
    @VoField("getTourTopic")
    private String topic;
    @VoField("getProductManagerRecommend")
    private String productManagerRecommend;

    private List<Date> leaveDates = new ArrayList<Date>();

    public void addLeaveDate(Date date) {
        leaveDates.add(date);
    }

    public List<Date> getLeaveDates() {
        return leaveDates;
    }

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    public String getProductManagerRecommend() {
        return productManagerRecommend;
    }

    public void setProductManagerRecommend(String productManagerRecommend) {
        this.productManagerRecommend = productManagerRecommend;
    }

    public String getSubtitle() {
        return subtitle;
    }

    public void setSubtitle(String subtitle) {
        this.subtitle = subtitle;
    }

    public int getDayCount() {
        return dayCount;
    }

    public void setDayCount(int dayCount) {
        this.dayCount = dayCount;
    }

    public int getNightCount() {
        return nightCount;
    }

    public void setNightCount(int nightCount) {
        this.nightCount = nightCount;
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }

    public String getLeaveCity() {
        return leaveCity;
    }

    public void setLeaveCity(String leaveCity) {
        this.leaveCity = leaveCity;
    }

    public long getProductId() {
        return productId;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

}
