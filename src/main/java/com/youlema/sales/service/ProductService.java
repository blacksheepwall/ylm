package com.youlema.sales.service;

import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.AreaFacade;
import com.yolema.tbss.ext.facade.DictionaryFacade;
import com.yolema.tbss.ext.facade.TourPlanSearchFacade;
import com.yolema.tbss.ext.facade.TourProductFacade;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.fdo.plan.TourPlanSearchFdo;
import com.yolema.tbss.ext.facade.fdo.product.SearchProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowHomePageProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductFdo;
import com.yolema.tbss.ext.facade.fdo.product.ShowProductPriceFdo;
import com.yolema.tbss.ext.facade.fdo.sys.AreaFdo;
import com.yolema.tbss.ext.facade.fdo.sys.DictionaryFdo;
import com.yolema.tbss.ext.facade.result.AreaResult;
import com.yolema.tbss.ext.facade.result.DictionaryResult;
import com.yolema.tbss.ext.facade.result.PlanSearchResult;
import com.yolema.tbss.ext.facade.result.ShowProductResult;
import com.yolema.tbss.ext.facade.result.TourProductResult;
import com.youlema.sales.meta.HomePageProductItem;
import com.youlema.sales.meta.PlanItem;
import com.youlema.sales.meta.ProductInfo;
import com.youlema.sales.meta.ProductItem;
import com.youlema.sales.meta.Region;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.utils.Vo;
import com.youlema.sales.ws.ProductFacadeService;
import com.youlema.tools.jee.pages.PageList;
import com.youlema.tools.jee.pages.PagingTools;

@Service
public class ProductService {
    @Resource
    private ProductFacadeService facadeService;
    @Resource(name = "TourProductFacade")
    private TourProductFacade tourProductFacade;
    @Resource(name = "TourPlanSearchFacade")
    private TourPlanSearchFacade tourPlanSearchFacade;
    @Resource(name = "AreaFacade")
    private AreaFacade areaFacade;
    @Resource(name = "DictionaryFacade")
    private DictionaryFacade dictionaryFacade;

    public List<Region> listOutlandRegions() {
        return Collections.emptyList();
    }

    public SearchResult<HomePageProductItem> listHotProduct() {
        return queryIndexProduct("热卖");
    }

    public SearchResult<HomePageProductItem> listSpecialOfferProduct() {
        return queryIndexProduct("特价");
    }

    public SearchResult<HomePageProductItem> listEndProduct() {
        return queryIndexProduct("END");
    }

    /**
     * 根据类型获取散拼产品List
     * 
     * @param type
     * @return
     */
    private SearchResult<HomePageProductItem> queryIndexProduct(String type) {
        SearchResult<ShowHomePageProductFdo> result = facadeService.getIndexProductsByType(type);
        List<ShowHomePageProductFdo> resultList = result.getResultList();
        List<HomePageProductItem> items1 = new ArrayList<HomePageProductItem>();
        Vo<HomePageProductItem> vo = new Vo<HomePageProductItem>(HomePageProductItem.class);
        DictionaryResult listByCode = dictionaryFacade.findListByCode("TRANSPORTATION");
        Map<String, String> map = new HashMap<String, String>();
        if (listByCode.isSuccess()) {
            Set<DictionaryFdo> dictionarries = listByCode.getDictionarries();
            for (DictionaryFdo dictionaryFdo : dictionarries) {
                map.put(dictionaryFdo.getDictionaryKey(), dictionaryFdo.getDictionaryValue());
            }
        }
        for (ShowHomePageProductFdo fdo : resultList) {
            HomePageProductItem item = vo.inject(fdo);
            AreaResult areaResult = areaFacade.getByCode(item.getLeaveCity());
            if (areaResult.isSuccess()) {
                AreaFdo areaFdo = areaResult.getAreaFdo();
                if (areaFdo != null) {
                    item.setLeaveCityName(areaFdo.getAreaName());
                }
            }
            String leaveName = map.get(item.getLeaveTraffic());
            item.setLeaveTrafficName(leaveName);
            String returnName = map.get(item.getReturnTraffic());
            item.setReturnTrafficName(returnName);
            items1.add(item);
        }
        return new SearchResult<HomePageProductItem>(result.getCount(), items1);
    }

    /**
     * 根据Id获取散拼产品详细信息
     * 
     * @param productId
     * @return
     */
    public ProductInfo getProduct(long productId) {
        ShowProductFdo productFdo = facadeService.getShowProductFdo(productId);

        TourProductResult result = tourProductFacade.getById(productId);
        TourProductFdo pdtFdo = result.getTourProductBean();

        if (productFdo == null || pdtFdo == null) {
            return null;
        }
        Vo<ProductInfo> vo = new Vo<ProductInfo>(ProductInfo.class);
        ProductInfo inject = vo.inject(productFdo, pdtFdo);
        return inject;
    }

    /**
     * 进入订阅页面专用
     * 
     * @param productId
     * @return
     */
    public ProductInfo getProductForBook(long productId) {
        TourProductResult productResult = tourProductFacade.goAgentsBooking(productId);
        if (productResult.isSuccess()) {
            TourProductFdo productFdo = productResult.getTourProductBean();
            Vo<ProductInfo> vo = new Vo<ProductInfo>(ProductInfo.class);
            ProductInfo info = vo.inject(productFdo);
            info.setAdultPrice(productFdo.getAuditPrice());
            info.setProductFdos(productFdo.getProductCompareFdos());
            return info;
        }
        return null;

    }

    /**
     * 查询产品列表，对应页面上的团队查看
     * 
     * @param condition
     * @param pageNo
     * @param pageSize
     * @return
     */
    public SearchResult<ProductItem> queryProduct(QueryCondition condition, int pageNo, int pageSize) {
        SearchProductFdo searchFdo = conditionToFdo(condition, pageNo, pageSize);
        String order = "start_date_desc";
        Boolean desc = condition.startDateOrderDesc;
        if (desc != null) {
            if (!desc) {
                order = "start_date_asc";
            }
        }
        desc = condition.priceOrderDesc;
        if (desc != null) {
            order = desc ? "price_desc" : "price_asc";
        }
        ShowProductResult result = tourProductFacade.queryProductList(searchFdo, order);
        PageList<ShowProductFdo> pageList = result.getPageList();
        Vo<ProductItem> vo = new Vo<ProductItem>(ProductItem.class);
        List<ProductItem> list = new ArrayList<ProductItem>();
        for (ShowProductFdo fdo : pageList) {
            List<ShowProductPriceFdo> showProductPriceFdos = fdo.getShowProductPriceFdos();
            BigDecimal priceOfAgncy = BigDecimal.ZERO;
            for (ShowProductPriceFdo showProductPriceFdo : showProductPriceFdos) {
                // 成人价格为最终的价格
                if ("adult_price".equalsIgnoreCase(showProductPriceFdo.getCustomType())) {
                    priceOfAgncy = showProductPriceFdo.getPriceOfAgency();
                    break;
                }
            }
            ProductItem item = vo.inject(fdo);
            int isGroup = fdo.getIsGroup();
            item.setGrouped((isGroup == 1) ? "已成团" : "未成团");
            item.setSettlePrice(priceOfAgncy);
            list.add(item);
        }
        PagingTools tools = pageList.getPageTools();
        int pages = tools.getPages();
        return new SearchResult<ProductItem>(pages, list);
    }

    /**
     * 散拼计划搜索
     * 
     * @param condition
     * @param pageNo
     * @param pageSize
     * @return
     */
    public SearchResult<PlanItem> queryPlan(QueryCondition condition, int pageNo, int pageSize) {
        SearchProductFdo searchFdo = conditionToFdo(condition, pageNo, pageSize);
        PlanSearchResult result = tourPlanSearchFacade.searchPlan(searchFdo);
        List<TourPlanSearchFdo> productFdos = result.getPageList();
        Vo<PlanItem> vo = new Vo<PlanItem>(PlanItem.class);
        List<PlanItem> items1 = new ArrayList<PlanItem>();
        for (TourPlanSearchFdo planFdo : productFdos) {
            items1.add(vo.inject(planFdo));
        }
        return new SearchResult<PlanItem>(items1.size(), items1);
    }

    private SearchProductFdo conditionToFdo(QueryCondition condition, int pageNo, int pageSize) {
        SearchProductFdo searchFdo = new SearchProductFdo();
        searchFdo.setPageNum(pageNo);
        searchFdo.setPageSize(pageSize);
        if (condition.productType == 1) {
            searchFdo.setProductMainTypeCode("GN");
        } else if (condition.productType == 4) {
            searchFdo.setProductMainTypeCode("CJ");
        }
        searchFdo.setProductMinorTypeCode(condition.lineType);
        searchFdo.setKeyword(condition.queryText);
        searchFdo.setSearchType("spTourProduct");
        searchFdo.setLeaveCity(condition.leaveCity);
        searchFdo.setLeaveCityTraffic(condition.traffic);
        searchFdo.setDays(condition.days);
        searchFdo.setPriceRange(condition.priceRange);
        searchFdo.setMinStartDays(condition.startDate);
        searchFdo.setMaxStartDays(condition.endDate);
        searchFdo.setIsMinPrice(condition.priceOrderDesc);
        searchFdo.setIsNewStart(condition.startDateOrderDesc);
        return searchFdo;
    }

    public static class QueryCondition {
        private int productType;
        private String queryText;
        private String leaveCity;
        private String days;
        private String priceRange;
        private Date startDate;
        private String traffic;
        private String lineType;
        private Date endDate;
        private Boolean priceOrderDesc;
        private Boolean startDateOrderDesc;

        public void setPriceOrderDesc(Boolean priceOrderDesc) {
            this.priceOrderDesc = priceOrderDesc;
        }

        public void setStartDateOrderDesc(Boolean startDateOrderDesc) {
            this.startDateOrderDesc = startDateOrderDesc;
        }

        public void setProductType(int productType) {
            this.productType = productType;
        }

        public String getDays() {
            return days;
        }

        public void setDays(String days) {
            this.days = days;
        }

        public String getPriceRange() {
            return priceRange;
        }

        public void setPriceRange(String priceRange) {
            this.priceRange = priceRange;
        }

        public void setQueryText(String queryText) {
            if (queryText != null) {
                try {
                    this.queryText = new String(queryText.getBytes("UTF-8"), "GBK");
                } catch (UnsupportedEncodingException e) {
                }
            }
        }

        public String getLineType() {
            return lineType;
        }

        public void setLineType(String lineType) {
            this.lineType = lineType;
        }

        public void setLeaveCity(String leaveCity) {
            this.leaveCity = leaveCity;
        }

        public void setTraffic(String traffic) {
            this.traffic = traffic;
        }

        public void setStartDate(Date parse) {
            this.startDate = parse;

        }

        public void setEndDate(Date parse) {
            this.endDate = parse;

        }
    }

}
