package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourPkgProductFacade;
import com.yolema.tbss.ext.facade.fdo.pkgProduct.TourPkgDateFdo;
import com.yolema.tbss.ext.facade.fdo.pkgProduct.TourPkgProductFdo;
import com.yolema.tbss.ext.facade.result.TourPkgProductResult;
import com.youlema.sales.meta.FreeTravelProductInfo;
import com.youlema.sales.meta.FreeTravelProductItem;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.utils.Vo;
import com.youlema.tools.jee.pages.PageList;

/**
 * 自由行Service
 * 
 * @author user
 * 
 */
@Service
public class FreeTravelService {

    @Resource(name="MockTourPkgProductFacade")
    private TourPkgProductFacade tourPkgProductFacade;
    /**
     * 查询自由行产品列表
     * @param queryCondition
     * @return
     */
    public SearchResult<FreeTravelProductItem> queryFreeTravelProducts(FreeTravelProductQueryCondition queryCondition) {
        TourPkgProductFdo fdo = new TourPkgProductFdo();
        
        //TODO queryCondition转换成查询fdo过程待实现
        
        
//        TourPkgProductResult result = tourPkgProductFacade.queryPageList(fdo);
//        if (result.isSuccess()) {
//            PageList<TourPkgProductFdo> pageList = result.getTourPkgProductFdoPageList();
//            List<FreeTravelProductItem> items = new ArrayList<FreeTravelProductItem>(pageList.size());
//            Vo<FreeTravelProductItem> vo = new Vo<FreeTravelProductItem>(FreeTravelProductItem.class);
//            for (TourPkgProductFdo tourPkgProductFdo : pageList) {
//                FreeTravelProductItem inject = vo.inject(tourPkgProductFdo);
//                List<TourPkgDateFdo> dateFdos = tourPkgProductFdo.getTourPkgDateFdos();
//                for (TourPkgDateFdo tourPkgDateFdo : dateFdos) {
//                    Date date = tourPkgDateFdo.getGmtDayOfStart();
//                    inject.addLeaveDate(date);
//                }
//                items.add(inject);
//            }
//            return new SearchResult<FreeTravelProductItem>(1, items);
//        }
        return new SearchResult<FreeTravelProductItem>(0, new ArrayList<FreeTravelProductItem>(0));
    }
    

    public static class FreeTravelProductQueryCondition {
        private String queryText;
        private Date begin;
        private Date end;
        private String outboundLine;
        private String inlandLine;
        private String leaveCity;
        private String type;

        public String getQueryText() {
            return queryText;
        }

        public void setQueryText(String queryText) {
            this.queryText = queryText;
        }

        public Date getBegin() {
            return begin;
        }

        public void setBegin(Date begin) {
            this.begin = begin;
        }

        public Date getEnd() {
            return end;
        }

        public void setEnd(Date end) {
            this.end = end;
        }

        public String getOutboundLine() {
            return outboundLine;
        }

        public void setOutboundLine(String outboundLine) {
            this.outboundLine = outboundLine;
        }

        public String getInlandLine() {
            return inlandLine;
        }

        public void setInlandLine(String inlandLine) {
            this.inlandLine = inlandLine;
        }

        public String getLeaveCity() {
            return leaveCity;
        }

        public void setLeaveCity(String leaveCity) {
            this.leaveCity = leaveCity;
        }

        public String getType() {
            return type;
        }

        public void setType(String type) {
            this.type = type;
        }
    }

    /**
     * 根据ID号获取自由行对象
     * @param id
     * @return
     */
    public SearchResult<FreeTravelProductInfo> getFreeTravelProductById(long id) {
        // TODO Auto-generated method stub
        return null;
    }
}
