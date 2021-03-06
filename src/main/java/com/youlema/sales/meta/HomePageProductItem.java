package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.youlema.sales.utils.VoField;

public class HomePageProductItem {
    @VoField("getProductId")
    private long productId;
    @VoField("getProductName")
    private String title;
    @VoField("getMarketCost")
    private BigDecimal price;
    @VoField("getMinAgency")
    private BigDecimal storePrice;
    @VoField("getGmtDayOfStart")
    private Date leaveDate;
    @VoField("getLeaveCity")
    private String leaveCity;
    private String leaveCityName;

    public String getLeaveCityName() {
        return leaveCityName;
    }

    public void setLeaveCityName(String leavePort) {
        this.leaveCityName = leavePort;
    }

    @VoField("getLeaveCityTraffic")
    private String leaveTraffic;
    @VoField("getReturnCityTraffic")
    private String returnTraffic;
    
    private String leaveTrafficName;
    
    private String returnTrafficName;
    
    
    public String getLeaveTrafficName() {
        return leaveTrafficName;
    }

    public void setLeaveTrafficName(String leaveTrafficName) {
        this.leaveTrafficName = leaveTrafficName;
    }

    public String getReturnTrafficName() {
        return returnTrafficName;
    }

    public void setReturnTrafficName(String returnTrafficName) {
        this.returnTrafficName = returnTrafficName;
    }

    @VoField("getDays")
    private int dayCount;
    @VoField("getNight")
    private int nightCount;
    @VoField("getProductManagerRecommend")
    private String managerRecommend;
    @VoField("getTopic")
    private String topic;

    public String getTopic() {
        return topic;
    }

    public void setTopic(String topic) {
        this.topic = topic;
    }

    private List<Date> dateList = new ArrayList<Date>();

    public List<Date> getDateList() {
        return dateList;
    }

    public void addDate(Date date) {
        dateList.add(date);
    }

    public String getManagerRecommend() {
        return managerRecommend;
    }

    public void setManagerRecommend(String managerRecommend) {
        this.managerRecommend = managerRecommend;
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

    public String getReturnTraffic() {
        return returnTraffic;
    }

    public void setReturnTraffic(String returnTraffic) {
        this.returnTraffic = returnTraffic;
    }

    public String getLeaveTraffic() {
        return leaveTraffic;
    }

    public void setLeaveTraffic(String leaveTraffic) {
        this.leaveTraffic = leaveTraffic;
    }

    public String getLeaveCity() {
        return leaveCity;
    }

    public void setLeaveCity(String leaveCity) {
        this.leaveCity = leaveCity;
    }

    public BigDecimal getStorePrice() {
        return storePrice;
    }

    public void setStorePrice(BigDecimal storePrice) {
        this.storePrice = storePrice;
    }

    public Date getLeaveDate() {
        return leaveDate;
    }

    public void setLeaveDate(Date leaveDate) {
        this.leaveDate = leaveDate;
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
