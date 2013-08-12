package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.Date;

import com.youlema.sales.utils.VoField;

/**
 * 产品ITEM
 * 
 * @author zhushijun
 * 
 */
public class ProductItem {
    @VoField("getProductId")
    private long id;
    @VoField("getLineName")
    private String name;
    @VoField("getGmtLeave")
    private Date date;

    private String isGrouped;
    // TODO 门市价格在TourProductFdo中才可以取出
    @VoField("getPrice")
    private BigDecimal price;
    private BigDecimal settlePrice;
    @VoField("getBookNubmer")
    private int remainCount;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getIsGrouped() {
        return isGrouped;
    }

    public void setGrouped(String isGrouped) {
        this.isGrouped = isGrouped;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getSettlePrice() {
        return settlePrice;
    }

    public void setSettlePrice(BigDecimal settlePrice) {
        this.settlePrice = settlePrice;
    }

    public int getRemainCount() {
        return remainCount;
    }

    public void setRemainCount(int remainCount) {
        this.remainCount = remainCount;
    }

}
