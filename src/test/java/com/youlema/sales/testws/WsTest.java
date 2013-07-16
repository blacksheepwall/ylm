package com.youlema.sales.testws;

import java.util.List;

import javax.annotation.Resource;

import junit.framework.TestCase;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yolema.tbss.ext.facade.TourProductFacade;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductFdo;
import com.yolema.tbss.ext.facade.result.ShowProductResult;

@ContextConfiguration(locations = "file:src/test/resources/applicationContext-ws.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class WsTest extends TestCase {
    @Resource
    TourProductFacade facade;
	@Test
	public void testHello() throws Exception {
	    ShowProductResult labelProduct = facade.queryIndexLabelProduct("热卖", 100);
	    List<ShowProductFdo> fdos = labelProduct.getShowProductFdos();
	    for (ShowProductFdo showProductFdo : fdos) {
            System.out.println(showProductFdo.getLeaveCityTraffic());
        }
	    
	}
}
