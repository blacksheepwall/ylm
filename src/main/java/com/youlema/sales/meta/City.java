package com.youlema.sales.meta;

public class City {
    private String cityName;
    private String pinyin;
    private boolean inland;
    public City(String cityName, boolean inland) {
        this.cityName = cityName;
        this.inland = inland;
    }
    public City(String cityName) {
        this(cityName , true);
    }
    public String getCityName() {
        return cityName;
    }
    public void setCityName(String cityName) {
        this.cityName = cityName;
    }
    public String getPinyin() {
        return pinyin;
    }
    public void setPinyin(String pinyin) {
        this.pinyin = pinyin;
    }
    public boolean isInland() {
        return inland;
    }
    public void setInland(boolean inland) {
        this.inland = inland;
    }
}
