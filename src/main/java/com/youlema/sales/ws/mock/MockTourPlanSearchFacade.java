package com.youlema.sales.ws.mock;

import java.math.BigDecimal;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourPlanSearchFacade;
import com.yolema.tbss.ext.facade.fdo.plan.TourPlanSearchFdo;
import com.yolema.tbss.ext.facade.fdo.product.SearchProductFdo;
import com.yolema.tbss.ext.facade.result.PlanSearchResult;
import com.youlema.tools.jee.pages.PageList;
@Service("MockTourPlanSearchFacade")
public class MockTourPlanSearchFacade implements TourPlanSearchFacade {

    @Override
    public PlanSearchResult searchPlan(SearchProductFdo arg0) {
        PlanSearchResult result = new PlanSearchResult(true);
        PageList<TourPlanSearchFdo> fdos = new PageList<TourPlanSearchFdo>();
        for (int i = 0; i < 10; i++) {
            TourPlanSearchFdo fdo = new TourPlanSearchFdo();
            fdo.setSpProductId(50000L+i);
            fdo.setBusinessName("太阳水星一辈子游");
            fdo.setMinPrice(new BigDecimal("987654321.99"));
            fdo.setLeaveCityName("地球");
            fdo.setLabels("标签1 标签2 标签3");
            fdo.setLeaveCityTrafficName("灰机");
            fdo.setDaysDuring("1988");
            fdo.setDaysNight("1989");
            fdo.setProductManagerRecommend("推荐推荐，灰常推荐！");
            fdo.setLineTopic("线路主题，主题主题主题");
            fdos.add(fdo);
        }
        result.setPageList(fdos);
        
        return result;
    }

}
