package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.youlema.sales.utils.VoField;

public class PlanItem {
    @VoField("getSpProductId")
    private long productId;
    @VoField("getBusinessName")
    private String title;
    @VoField("getMinPrice")
    private BigDecimal price;
    @VoField("getLeaveCityName")
    private String leaveCity;
    @VoField("getLabels")
    private String labels;
    @VoField("getLeaveCityTrafficName")
    private String leaveTraffic;
    @VoField("getDaysDuring")
    private String dayCount;
    @VoField("getDaysNight")
    private String nightCount;
    @VoField("getProductManagerRecommend")
    private String managerRecommend;
    @VoField("getLineTopic")
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


    public String getLabels() {
        return labels;
    }

    public void setLabels(String labels) {
        this.labels = labels;
    }

    public String getDayCount() {
        return dayCount;
    }

    public void setDayCount(String dayCount) {
        this.dayCount = dayCount;
    }

    public String getNightCount() {
        return nightCount;
    }

    public void setNightCount(String nightCount) {
        this.nightCount = nightCount;
    }

    public void setDateList(List<Date> dateList) {
        this.dateList = dateList;
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
