package com.youlema.sales.ws.mock;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourProductFacade;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.result.TourProductResult;


@Service
public class MockTourProductFacade implements TourProductFacade {

    @Override
    public TourProductResult getById(Long id) {
        TourProductResult result = new TourProductResult(true);
        TourProductFdo fdo = new TourProductFdo();
        fdo.setLineName("火星太阳一日游");
        fdo.setNumOfOrder(65536);
        result.setTourProductBean(fdo);
        return result;
    }

    @Override
    public TourProductResult queryPageList(TourProductFdo tourProductBean) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public TourProductResult getSimpleById(Long id) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public TourProductResult getTourProduct(Long id, boolean isPublish, String user) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public TourProductResult getByIdForCover(Long id, boolean isPublish, String user) {
        // TODO Auto-generated method stub
        return null;
    }

}
