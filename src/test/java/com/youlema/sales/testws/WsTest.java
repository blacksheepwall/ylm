package com.youlema.sales.testws;

import java.util.List;

import javax.annotation.Resource;

import junit.framework.TestCase;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yolema.tbss.ext.facade.TourPlanSearchFacade;
import com.yolema.tbss.ext.facade.TourProductFacade;
import com.yolema.tbss.ext.facade.fdo.plan.TourPlanSearchFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductFdo;
import com.yolema.tbss.ext.facade.result.PlanSearchResult;
import com.yolema.tbss.ext.facade.result.ShowProductResult;

@ContextConfiguration(locations = "file:src/test/resources/applicationContext-ws.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class WsTest extends TestCase {
    @Resource
    TourPlanSearchFacade facade;
	@Test
	public void testHello() throws Exception {
	    TourPlanSearchFdo fdo = new TourPlanSearchFdo();
	    fdo.setSearchType("spTourProduct");
	    fdo.setProductMainTypeCode("GN");
	    PlanSearchResult labelProduct = facade.searchPlan(new String("厦门".getBytes("UTF-8"),"GBK"), fdo);
	    List<TourPlanSearchFdo> fdos = labelProduct.getPageList();
	    for (TourPlanSearchFdo showProductFdo : fdos) {
            System.out.println(showProductFdo.getLeaveCityTraffic());
        }
	    
	}
}
