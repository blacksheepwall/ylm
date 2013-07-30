package com.youlema.sales.ws;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourProductFacade;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowHomePageProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductFdo;
import com.yolema.tbss.ext.facade.result.ShowProductResult;
import com.yolema.tbss.ext.facade.result.TourProductResult;
import com.youlema.sales.meta.SearchResult;

@Service
public class ProductFacadeService {
    @Resource(name = "TourProductFacade")
    private TourProductFacade tourProductFacade;

    public TourProductFdo getProduct(long productId) {
        TourProductResult result = tourProductFacade.getById(productId);
        return result.getTourProductBean();
    }

    public ShowProductFdo getShowProductFdo(long productId) {
        ShowProductResult result = tourProductFacade.getShowProductById(productId);
        return result.getShowProductFdo();
    }

    /**
     * 获取首页公告数据
     * 
     * @param type
     * @return
     */
    public SearchResult<ShowHomePageProductFdo> getIndexProductsByType(String type) {
        ShowProductResult result = tourProductFacade.queryIndexProduct(type, 20);
        List<ShowHomePageProductFdo> productFdos = result.getShowHomePageProductFdos();
        return new SearchResult<ShowHomePageProductFdo>(productFdos.size(), productFdos);
    }

}
