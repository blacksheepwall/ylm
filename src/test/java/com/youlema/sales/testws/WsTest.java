package com.youlema.sales.testws;

import javax.annotation.Resource;

import junit.framework.TestCase;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yolema.tbss.ext.facade.TourPlanSearchFacade;
import com.yolema.tbss.ext.facade.fdo.plan.TourPlanSearchFdo;
import com.yolema.tbss.ext.facade.fdo.product.SearchProductFdo;
import com.yolema.tbss.ext.facade.result.PlanSearchResult;
import com.youlema.tools.jee.pages.PageList;

@ContextConfiguration(locations = "file:src/test/resources/applicationContext-ws.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class WsTest extends TestCase {
    @Resource
    TourPlanSearchFacade facade;
	@Test
	public void testHello() throws Exception {

        SearchProductFdo searchFdo = new SearchProductFdo();
        searchFdo.setProductMainTypeCode("GN");
	    PlanSearchResult plan = facade.searchPlan(searchFdo);
	    PageList<TourPlanSearchFdo> pageList = plan.getPageList();
	    System.out.println(pageList.size());
	}
}
