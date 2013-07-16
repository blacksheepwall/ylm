package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductFdo;
import com.youlema.sales.meta.City;
import com.youlema.sales.meta.ProductItem;
import com.youlema.sales.meta.Region;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.ws.ProductFacadeService;

@Service
public class ProductService {
    @Resource
    private ProductFacadeService facadeService;

    /**
     * 获取出发城市
     * 
     * @param destCity
     * @return
     */
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

    public SearchResult<ProductItem> listHotProduct() {
        return queryIndexProduct("热卖");
    }

    public SearchResult<ProductItem> listSpecialOfferProduct() {
        return queryIndexProduct("特价");
    }

    public SearchResult<ProductItem> listEndProduct() {
        return queryIndexProduct("END");
    }

    private SearchResult<ProductItem> queryIndexProduct(String type) {
        SearchResult<ShowProductFdo> result = facadeService.getIndexProductsByType(type);
        List<ShowProductFdo> resultList = result.getResultList();
        List<ProductItem> items = new ArrayList<ProductItem>();
        for (ShowProductFdo fdo : resultList) {
            ProductItem item = toProductItem(fdo);
            if (item != null) {
                items.add(item);
            }
        }
        return new SearchResult<ProductItem>(items.size(), items);
    }

    private ProductItem toProductItem(ShowProductFdo fdo) {
        Long productId = fdo.getProductId();
        TourProductFdo productFdo = facadeService.getProduct(productId);
        ProductItem item = new ProductItem();
        if (productFdo != null) {
            String name = fdo.getLineName();
            Date leave = fdo.getGmtLeave();
            String leaveCity = fdo.getLeaveCity();
            item.setLeaveCity(leaveCity);
            item.setReturnTraffic(fdo.getReturnTraffic());
            item.setRecommend(true);
            item.setPrice(productFdo.getPromotionPrice());
            item.setProductId(productId);
            item.setTitle(name);
            item.setLeaveDate(leave);
            item.setStorePrice(productFdo.getStroePrice());
            item.setKeywords(fdo.getKeyword());
            item.setLeaveTraffic(fdo.getLeaveTraffic());
            return item;
        }
        return null;
    }

}
