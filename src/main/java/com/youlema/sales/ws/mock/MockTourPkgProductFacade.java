package com.youlema.sales.ws.mock;

import java.util.Date;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourPkgProductFacade;
import com.yolema.tbss.ext.facade.result.TourPkgProductResult;
import com.yolema.tbss.ext.facade.result.TourPkgProductShowResult;

@Service("MockTourPkgProductFacade")
public class MockTourPkgProductFacade implements TourPkgProductFacade {

    @Override
    public TourPkgProductResult findTourPkgProductByIdAndStartDate(Long arg0, Date arg1) {
        // TODO Auto-generated method stub
        return null;
    }

    @Override
    public TourPkgProductShowResult showTourPkgProduct(Long arg0, Date arg1) {
        // TODO Auto-generated method stub
        return null;
    }

}
