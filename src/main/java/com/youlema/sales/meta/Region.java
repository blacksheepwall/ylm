package com.youlema.sales.meta;

import java.util.ArrayList;
import java.util.List;

/**
 * 地区
 * @author zhushijun
 *
 */
public class Region {
    public Region(boolean inland, String name) {
        this.inland = inland;
        this.name = name;
    }

    private boolean inland = true;
    
    public boolean isInland() {
        return inland;
    }

    public void setInland(boolean inland) {
        this.inland = inland;
    }

    private String name;
    
    private List<City> citys = new ArrayList<City>();

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<City> getCitys() {
        return citys;
    }

    public void setCitys(List<City> citys) {
        this.citys = citys;
    }
}
