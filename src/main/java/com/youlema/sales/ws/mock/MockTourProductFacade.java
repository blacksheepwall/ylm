package com.youlema.sales.ws.mock;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourProductFacade;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.SearchProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductFdo;
import com.yolema.tbss.ext.facade.result.ShowProductResult;
import com.yolema.tbss.ext.facade.result.TourProductResult;
import com.youlema.tools.jee.pages.PageList;

@Service
public class MockTourProductFacade implements TourProductFacade {

    @Override
    public TourProductResult getById(Long id) {
        TourProductResult result = new TourProductResult(true);
        TourProductFdo fdo = new TourProductFdo();
        fdo.setLineName("火星太阳一日游");
        fdo.setNumOfOrder(65536);
        fdo.setProductManager("产品经理甲");
        fdo.setProductClaimPersion("产品计调甲");
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
        fdo.setStartDate(new Date());
        result.setShowProductFdo(fdo);
        result.setSuccess(true);
        return result;

    }

    @Override
    public ShowProductResult queryProductList(SearchProductFdo arg0, String arg1) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ShowProductResult queryIndexLabelProduct(String arg0, Integer arg1) {
        throw new UnsupportedOperationException();
    }

    @Override
    public ShowProductResult queryIndexProduct(String promotionType, Integer num) {
        throw new UnsupportedOperationException();
    }

}
