package com.youlema.sales.ws.mock;

import java.util.Arrays;
import java.util.Date;

import org.apache.commons.lang.time.DateUtils;
import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourPkgProductFacade;
import com.yolema.tbss.ext.facade.fdo.pkgProduct.TourPkgDateFdo;
import com.yolema.tbss.ext.facade.fdo.pkgProduct.TourPkgProductFdo;
import com.yolema.tbss.ext.facade.result.TourPkgProductResult;

@Service
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
        throw new UnsupportedOperationException();
    }

    @Override
    public TourPkgProductResult tourPkgView(Long arg0) {
        throw new UnsupportedOperationException();
    }

}
