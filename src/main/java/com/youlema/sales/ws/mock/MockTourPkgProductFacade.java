package com.youlema.sales.ws.mock;

import java.util.Date;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourPkgProductFacade;
import com.yolema.tbss.ext.facade.fdo.pkgProduct.TourPkgProductFdo;
import com.yolema.tbss.ext.facade.result.TourPkgProductResult;
import com.yolema.tbss.ext.facade.result.TourPkgProductShowResult;

@Service("MockTourPkgProductFacade")
public class MockTourPkgProductFacade implements TourPkgProductFacade {

    @Override
    public TourPkgProductResult findTourPkgProductByIdAndStartDate(Long productId, Date date) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public TourPkgProductResult goAgentsBooking(Long arg0) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public TourPkgProductResult searchPkgProduct(TourPkgProductFdo arg0) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public TourPkgProductShowResult showTourPkgProduct(Long productId, Date date) {
        // TODO Auto-generated method stub
        return null;
    }


}
