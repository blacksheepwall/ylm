package com.youlema.sales.ws.mock;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourProductFacade;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.SearchProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowHomePageProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductPriceFdo;
import com.yolema.tbss.ext.facade.result.ShowProductResult;
import com.yolema.tbss.ext.facade.result.TourProductResult;
import com.youlema.tools.jee.pages.PageList;

@Service("MockTourProductFacade")
public class MockTourProductFacade implements TourProductFacade {

    @Override
    public TourProductResult getById(Long id) {
        TourProductResult result = new TourProductResult(true);
        TourProductFdo fdo = new TourProductFdo();
        fdo.setLineName("火星太阳一日游");
        fdo.setNumOfOrder(65536);
        fdo.setProductManager("奥巴马");
        fdo.setProductClaimPersion("松岛枫");
        fdo.setProductAssistant("松岛枫");
        fdo.setStroePrice(BigDecimal.ONE);
        fdo.setPromotionPrice(BigDecimal.TEN);
        fdo.setNumberOfPeoplePlan(10000000);
        fdo.setSubtitle("飞船游 途经很多很多很多星球，保证一辈子想回都回不来");
        fdo.setProductManagerRecommend("总统+美女全程陪伴");
        fdo.setKeyword("飞船游");
        fdo.setLeaveCity("地球");
        fdo.setTourCards("出生证");
        fdo.setLeaveCityTraffic("火箭");
        fdo.setReturnCity("冥王星");
        fdo.setReturnCityTraffic("还是火箭");
        fdo.setGmtLeave(new Date());
        result.setSuccess(true);
        result.setTourProductBean(fdo);

        return result;
    }

    @Override
    public TourProductResult queryPageList(TourProductFdo tourProductBean) {
        TourProductResult result = new TourProductResult(true);
        List<TourProductFdo> fdos = new ArrayList<TourProductFdo>();
        for (int i = 0; i < 10; i++) {
            TourProductFdo fdo = new TourProductFdo();
            fdo.setProductId((long) (20000 + i));
            fdo.setLineName("水星金星10年游" + i);
            fdo.setGmtLeave(new Date());
            fdo.setPromotionPrice(BigDecimal.TEN);
            fdo.setStroePrice(BigDecimal.TEN);
            fdos.add(fdo);
        }
        result.setTourProductBeanList(new PageList<TourProductFdo>(fdos));
        return result;
    }

    @Override
    public TourProductResult getSimpleById(Long id) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ShowProductResult getShowProductById(Long arg0) {
        ShowProductResult result = new ShowProductResult();
        ShowProductFdo fdo = new ShowProductFdo();
        fdo.setProductNo("999999999");
        fdo.setSubtitle("飞船游 途经很多很多很多星球，保证一辈子想回都回不来");
        fdo.setProductManagerRecommend("总统+美女全程陪伴");
        fdo.setKeyword("飞船游");
        fdo.setStartDate(new Date());
        fdo.setPrice(new BigDecimal("100000"));
        fdo.setAdultPrice(new BigDecimal("1234"));
        fdo.setChildPrice(new BigDecimal("2234"));
        fdo.setImgUrl("/img/8e71e654bbdb_640_426.jpg");
        fdo.setLeaveCity("地球");
        fdo.setTourCards("出生证");
        fdo.setLeaveCityTraffic("火箭");
        fdo.setReturnCity("冥王星");
        fdo.setReturnCityTraffic("还是火箭");
        fdo.setGmtLeave(new Date());
        fdo.setBookNubmer(9999);
        result.setShowProductFdo(fdo);
        result.setSuccess(true);
        return result;

    }

    @Override
    public ShowProductResult queryProductList(SearchProductFdo arg0, String arg1) {
        return queryIndexLabelProduct("关键字", 0);
    }

    private ShowProductResult queryIndexLabelProduct(String arg0, Integer arg1) {
        ShowProductResult showProductResult = new ShowProductResult(true);
        PageList<ShowProductFdo> showProductFdos = new PageList<ShowProductFdo>();
        for (int i = 0; i < 10; i++) {
            ShowProductFdo fdo = new ShowProductFdo();

            fdo.setProductId((long) i + 40000);
            fdo.setLeaveCity("杭州");
            fdo.setLeaveTraffic("灰机");
            fdo.setLineName("太阳水星一辈子游");
            fdo.setGmtLeave(new Date());
            fdo.setProductManagerRecommend("总统+美女全程陪伴");
            fdo.setPrice(BigDecimal.ONE);
            fdo.setTopic("打灰机");
            fdo.setDays(100);
            fdo.setNight(1000);
            fdo.setKeyword(arg0);
            fdo.setReturnTraffic("灰机2");
            List<ShowProductPriceFdo> fdos = new ArrayList<ShowProductPriceFdo>();
            ShowProductPriceFdo pFdo = new ShowProductPriceFdo();
            pFdo.setCustomType("adult_price");
            pFdo.setAdultPrice(new BigDecimal("123456"));
            fdos.add(pFdo);
            fdo.setShowProductPriceFdos(fdos);
            showProductFdos.add(fdo);
        }
        showProductResult.setPageList(showProductFdos);
        return showProductResult;
    }

    @Override
    public ShowProductResult queryIndexProduct(String promotionType, Integer num) {
        ShowProductResult showProductResult = new ShowProductResult(true);
        List<ShowHomePageProductFdo> showProductFdos = new ArrayList<ShowHomePageProductFdo>();
        for (int i = 0; i < 10; i++) {
            ShowHomePageProductFdo fdo = new ShowHomePageProductFdo();

            fdo.setProductId((long) i + 40000);
            fdo.setProductName("太阳水星一辈子游");
            fdo.setGmtDayOfStart(new Date());
            fdo.setMinAgency(new BigDecimal("1000"));
            fdo.setMarketCost(new BigDecimal("2000"));
            fdo.setDaysDuring(10);
            showProductFdos.add(fdo);
        }
        showProductResult.setShowHomePageProductFdos(showProductFdos);
        return showProductResult;

    }

    @Override
    public TourProductResult goAgentsBooking(Long arg0) {
        throw new UnsupportedOperationException();
    }

}
