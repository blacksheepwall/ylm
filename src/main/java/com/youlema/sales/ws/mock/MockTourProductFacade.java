package com.youlema.sales.ws.mock;

import java.util.Date;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourProductFacade;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.SearchProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductFdo;
import com.yolema.tbss.ext.facade.result.ShowProductResult;
import com.yolema.tbss.ext.facade.result.TourProductResult;


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
    	throw new UnsupportedOperationException();
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
	public TourProductResult queryIndexProduct(String arg0, Integer arg1) {
		throw new UnsupportedOperationException();
	}

	@Override
	public ShowProductResult queryProductList(SearchProductFdo arg0, String arg1) {
		throw new UnsupportedOperationException();
	}

}
