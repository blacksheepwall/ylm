package com.youlema.sales.ws.mock;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.time.DateUtils;
import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourPkgProductFacade;
import com.yolema.tbss.ext.facade.fdo.pkgProduct.TourPkgDateFdo;
import com.yolema.tbss.ext.facade.fdo.pkgProduct.TourPkgProductFdo;
import com.yolema.tbss.ext.facade.result.TourPkgProductResult;
import com.youlema.tools.jee.pages.PageList;

@Service("MockTourPkgProductFacade")
public class MockTourPkgProductFacade implements TourPkgProductFacade {

    @Override
    public TourPkgProductResult getById(Long arg0) {
        TourPkgProductResult result = new TourPkgProductResult(true);
        TourPkgProductFdo tourPkgProductFdo = new TourPkgProductFdo();
        tourPkgProductFdo.setProductItemName("冥王星一日游");
        tourPkgProductFdo.setSubtitle("飞船游 途径火星金星土星");
        tourPkgProductFdo.setTourProductType("外星游");
        tourPkgProductFdo.setDestination("冥王星");
        tourPkgProductFdo.setLeaveCity("地球");
        tourPkgProductFdo.setTourCards("出生证");
        tourPkgProductFdo.setProductManager("奥巴马");
        tourPkgProductFdo.setProductAssistant("松岛枫");
        tourPkgProductFdo.setProductManagerRecommend("极度推荐极地游，总统+美女全程相伴");
        tourPkgProductFdo.setProductCode("999999999XXXXXOOOOO");
        TourPkgDateFdo dateFdo1 = new TourPkgDateFdo();
        dateFdo1.setGmtDayOfStart(DateUtils.addDays(new Date(), -1));
        dateFdo1.setProductId(arg0);
        dateFdo1.setTourPkgDateId(10101L);
        TourPkgDateFdo dateFdo2 = new TourPkgDateFdo();
        dateFdo2.setGmtDayOfStart(DateUtils.addDays(new Date(), 0));
        dateFdo2.setProductId(arg0);
        dateFdo2.setTourPkgDateId(10102L);
        TourPkgDateFdo dateFdo3 = new TourPkgDateFdo();
        dateFdo3.setGmtDayOfStart(DateUtils.addDays(new Date(), 1));
        dateFdo3.setProductId(arg0);
        dateFdo3.setTourPkgDateId(10103L);

        tourPkgProductFdo.setTourPkgDateFdos(Arrays.asList(dateFdo1, dateFdo2, dateFdo3));

        result.setTourPkgProductFdo(tourPkgProductFdo);
        return result;
    }

    @Override
    public TourPkgProductResult getPkgProductRoutes(Long arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public TourPkgProductResult getProductRouteItemById(Long arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public TourPkgProductResult getRouteProjectRecommendById(Long arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public TourPkgProductResult queryPageList(TourPkgProductFdo arg0) {
        TourPkgProductResult result = new TourPkgProductResult(true);
        PageList<TourPkgProductFdo> list = new PageList<TourPkgProductFdo>();
        for (int i = 0; i < 12; i++) {
            TourPkgProductFdo fdo = new TourPkgProductFdo();
            fdo.setProductId(4000L+i);
            fdo.setProductItemName("金星木星三日游");
            fdo.setSubtitle("太阳系四处溜达系列");
            fdo.setMinPrice(new BigDecimal("123456789"));
            fdo.setLeaveCity("地球");
            fdo.setKeyWords("金星 木星");
            fdo.setDaysDuring(3);
            fdo.setDaysNight(2);
            fdo.setTourTopic("外星蜜月旅游");
            fdo.setProductManagerRecommend("外星球度蜜月，你们懂的。");
            List<TourPkgDateFdo> dates = new ArrayList<TourPkgDateFdo>();
            for (int j = 0; j < 6; j++) {
                TourPkgDateFdo dateFdo =new TourPkgDateFdo();
                dateFdo.setGmtDayOfStart(DateUtils.addDays(new Date(), j));
                dates.add(dateFdo);
            }
            fdo.setTourPkgDateFdos(dates);
            list.add(fdo);
        }
        
        result.setTourPkgProductFdoPageList(list);
        return result;
    }

    @Override
    public TourPkgProductResult tourPkgView(Long arg0) {
        throw new UnsupportedOperationException();
    }

}
