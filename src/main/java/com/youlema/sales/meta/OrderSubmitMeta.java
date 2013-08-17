package com.youlema.sales.meta;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import com.alibaba.fastjson.annotation.JSONField;

public class OrderSubmitMeta {
    @JSONField(name = "id")
    private long productId;
    @JSONField(name = "name")
    private String contacter;
    @JSONField(name = "phone")
    private String contactMobile;
    @JSONField(name = "description")
    private String memo;
    @JSONField(name = "customerList")
    private List<CustomerVo> custList = new ArrayList<OrderSubmitMeta.CustomerVo>(0);

    public List<CustomerVo> getCustList() {
        return custList;
    }

    public void setCustList(List<CustomerVo> custList) {
        this.custList = custList;
    }

    public long getProductId() {
        return productId;
    }

    public void setProductId(long productId) {
        this.productId = productId;
    }

    public String getContacter() {
        return contacter;
    }

    public void setContacter(String contacter) {
        this.contacter = contacter;
    }

    public String getContactMobile() {
        return contactMobile;
    }

    public void setContactMobile(String contactMobile) {
        this.contactMobile = contactMobile;
    }

    public String getMemo() {
        return memo;
    }

    public void setMemo(String memo) {
        this.memo = memo;
    }

    public static class CustomerVo {
        // 是否成人
        @JSONField(name = "isAdult")
        private boolean isAdult;
        // 用户名
        @JSONField(name = "name")
        private String name;

        // 性别
        @JSONField(name = "gender")
        private int sex;

        // 证件类型
        @JSONField(name = "papertype")
        private String identType;

        // 证件号
        @JSONField(name = "papervalue")
        private String identNo;

        // 联系人手机
        @JSONField(name = "phone")
        private String mobile;

        // 价格
        @JSONField(name = "price")
        private BigDecimal price;

        // 单房差
        @JSONField(name = "dfcPrice")
        private BigDecimal priceOfSingleRoom;

        // 单房差数量
        @JSONField(name = "dfcCount")
        private int countOfPriceOfSingleRoom;

        // 保险单价
        @JSONField(name = "bxPrice")
        private BigDecimal insurance;

        // 保险数量
        @JSONField(name = "bxCount")
        private int countOfInsurance;

        public boolean isAdult() {
            return isAdult;
        }

        public void setAdult(boolean isAdult) {
            this.isAdult = isAdult;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public int getSex() {
            return sex;
        }

        public void setSex(int sex) {
            this.sex = sex;
        }

        public String getIdentType() {
            return identType;
        }

        public void setIdentType(String identType) {
            this.identType = identType;
        }

        public String getIdentNo() {
            return identNo;
        }

        public void setIdentNo(String identNo) {
            this.identNo = identNo;
        }

        public String getMobile() {
            return mobile;
        }

        public void setMobile(String mobile) {
            this.mobile = mobile;
        }

        public BigDecimal getPrice() {
            return price;
        }

        public void setPrice(BigDecimal price) {
            this.price = price;
        }

        public BigDecimal getPriceOfSingleRoom() {
            return priceOfSingleRoom;
        }

        public void setPriceOfSingleRoom(BigDecimal priceOfSingleRoom) {
            this.priceOfSingleRoom = priceOfSingleRoom;
        }

        public int getCountOfPriceOfSingleRoom() {
            return countOfPriceOfSingleRoom;
        }

        public void setCountOfPriceOfSingleRoom(int countOfPriceOfSingleRoom) {
            this.countOfPriceOfSingleRoom = countOfPriceOfSingleRoom;
        }

        public BigDecimal getInsurance() {
            return insurance;
        }

        public void setInsurance(BigDecimal insurance) {
            this.insurance = insurance;
        }

        public int getCountOfInsurance() {
            return countOfInsurance;
        }

        public void setCountOfInsurance(int countOfInsurance) {
            this.countOfInsurance = countOfInsurance;
        }

        @Override
        public String toString() {
            return "CustomerVo [isAdult=" + isAdult + ", name=" + name + ", sex=" + sex + ", identType=" + identType
                    + ", identNo=" + identNo + ", mobile=" + mobile + ", price=" + price + ", priceOfSingleRoom="
                    + priceOfSingleRoom + ", countOfPriceOfSingleRoom=" + countOfPriceOfSingleRoom + ", insurance="
                    + insurance + ", countOfInsurance=" + countOfInsurance + "]";
        }

    }

    @Override
    public String toString() {
        return "OrderBean [productId=" + productId + ", contacter=" + contacter + ", contactMobile=" + contactMobile
                + ", memo=" + memo + ", custList=" + custList + "]";
    }

}
