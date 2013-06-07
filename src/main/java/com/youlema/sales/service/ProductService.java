package com.youlema.sales.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.youlema.sales.meta.City;
import com.youlema.sales.meta.ProductItem;
import com.youlema.sales.meta.Region;

@Service
public class ProductService {

    public List<City> listStartCitys(City destCity) {
        String[] ss = new String[] { "杭州", "上海", "宁波", "南京", "温州", "台州" };
        List<City> list = new ArrayList<City>();
        for (String cityName : ss) {
            list.add(new City(cityName));
        }
        return list;
    }

    /**
     * 获取国内区域
     * 
     * @return
     */
    public List<Region> listInlandRegions() {
        Region r1 = loadHuadong();
        Region r2 = loadXinan();
        Region r3 = loadHuabei();
        Region r4 = loadHuanan();
        Region r5 = loadHuazhong();
        Region r6 = loadXibei();
        Region r7 = loadDongbei();

        return Arrays.asList(r1, r2, r3, r4, r5, r6, r7);
    }

    private Region loadDongbei() {
        Region r = new Region(true, "东北");
        List<City> citys = r.getCitys();
        citys.add(new City("沈阳"));
        citys.add(new City("大连"));
        citys.add(new City("吉林"));
        citys.add(new City("齐齐哈尔"));
        citys.add(new City("黑龙江"));
        return r;
    }

    private Region loadXibei() {
        Region r = new Region(true, "西北");
        List<City> citys = r.getCitys();
        citys.add(new City("吐鲁番"));
        citys.add(new City("乌鲁木齐"));
        citys.add(new City("延安"));
        citys.add(new City("西安"));
        citys.add(new City("中卫"));
        citys.add(new City("西宁"));
        citys.add(new City("嘉峪关"));
        citys.add(new City("兰州"));
        return r;
    }

    private Region loadHuazhong() {
        Region r = new Region(true, "华中");
        List<City> citys = r.getCitys();
        citys.add(new City("洛阳"));
        citys.add(new City("湖北"));
        citys.add(new City("长沙"));
        citys.add(new City("湘西土家族苗族自治州"));
        citys.add(new City("凤凰县"));
        citys.add(new City("张家界"));

        return r;
    }

    private Region loadHuanan() {
        Region r = new Region(true, "华南");
        List<City> citys = r.getCitys();
        citys.add(new City("深圳"));
        citys.add(new City("广州"));
        citys.add(new City("阳朔县"));
        citys.add(new City("南宁"));
        citys.add(new City("北海"));
        citys.add(new City("桂林"));
        citys.add(new City("海口"));
        citys.add(new City("三亚"));
        return r;
    }

    private Region loadHuabei() {
        Region r = new Region(true, "华北");
        List<City> citys = r.getCitys();

        citys.add(new City("石家庄"));
        citys.add(new City("大同"));
        citys.add(new City("太远"));
        citys.add(new City("平遥县"));
        citys.add(new City("海拉尔"));
        citys.add(new City("北京"));
        citys.add(new City("天津"));
        return r;

    }

    private Region loadXinan() {

        Region r = new Region(true, "西南");
        List<City> citys = r.getCitys();
        citys.add(new City("昆明"));
        citys.add(new City("西双版纳傣族自治州"));
        citys.add(new City("丽江"));
        citys.add(new City("贵阳"));
        citys.add(new City("成都"));
        citys.add(new City("九寨沟县"));
        citys.add(new City("重庆"));
        citys.add(new City("拉萨"));
        return r;
    }

    private Region loadHuadong() {
        Region r = new Region(true, "华东");
        List<City> citys = r.getCitys();
        citys.add(new City("无锡"));
        citys.add(new City("苏州"));
        citys.add(new City("黄山"));
        citys.add(new City("杭州"));
        citys.add(new City("厦门"));
        return r;
    }

    public List<Region> listOutlandRegions() {
        return Collections.emptyList();
    }

    public List<ProductItem> queryProducts(City startCity, DateCount dateCount, PriceRange priceRange) {
        ProductItem item1 = new ProductItem();
        item1.setDateRange("4晚5天");
        item1.setDates(Arrays.asList(new Date(), new Date(), new Date()));
        item1.setPlaceTag("港澳台-香港澳门");
        item1.setPrice(new BigDecimal("3998.00"));
        item1.setProductId(1001);
        item1.setRecommendMessage("国际5*酒店+国际5*独栋泳池别墅+蓝钻岛");
        item1.setSubTitle("国航直飞");
        item1.setTags(Arrays.asList("蜜月", "亲子", "度假"));
        item1.setTitle("港澳港双飞5日");

        ProductItem item2 = new ProductItem();
        item2.setDateRange("4晚5天");
        item2.setDates(Arrays.asList(new Date(), new Date(), new Date()));
        item2.setPlaceTag("美洲-美国");
        item2.setPrice(new BigDecimal("3998.00"));
        item2.setProductId(1001);
        item2.setRecommendMessage("国际5*酒店+国际5*独栋泳池别墅+蓝钻岛");
        item2.setSubTitle("国航直飞");
        item2.setTags(Arrays.asList("蜜月", "亲子", "度假"));
        item2.setTitle("美国东西海岸10天");

        return Arrays.asList(item1, item2);
    }

}
