package com.youlema.sales.ws;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourProductFacade;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductFdo;
import com.yolema.tbss.ext.facade.result.ShowProductResult;
import com.yolema.tbss.ext.facade.result.TourProductResult;

@Service
public class ProductFacadeService {
    @Resource
    private TourProductFacade tourProductFacade;
    
    public TourProductFdo getProduct(long productId){
        TourProductResult result = tourProductFacade.getById(productId);
        return result.getTourProductBean();
    }
    
    public ShowProductFdo getShowProductFdo(long productId){
        ShowProductResult result = tourProductFacade.getShowProductById(productId);
        return result.getShowProductFdo();
    }
}
