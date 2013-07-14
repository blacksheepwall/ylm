package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.Date;

public class ProductItem {
    private long productId;
    private String title;
    private String placeTag;
    private BigDecimal price;
    private BigDecimal storePrice;
    private Date leaveDate;
    private boolean recommend;

    public boolean getRecommend() {
        return recommend;
    }

    public void setRecommend(boolean recommend) {
        this.recommend = recommend;
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

    public String getPlaceTag() {
        return placeTag;
    }

    public void setPlaceTag(String placeTag) {
        this.placeTag = placeTag;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

}
