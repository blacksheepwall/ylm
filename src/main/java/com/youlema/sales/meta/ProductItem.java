package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.Date;

import com.youlema.sales.utils.VoField;

public class ProductItem {
    @VoField("getProductId")
    private long productId;
    @VoField("getLineName")
    private String title;
    @VoField("getPromotionPrice")
    private BigDecimal price;
    @VoField("getStroePrice")
    private BigDecimal storePrice;
    @VoField("getGmtLeave")
    private Date leaveDate;
    @VoField("getLeaveCity")
    private String leaveCity;
    @VoField("getKeyword")
    private String keywords;
    @VoField("getLeaveTraffic")
    private String leaveTraffic;
    @VoField("getReturnTraffic")
    private String returnTraffic;

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
