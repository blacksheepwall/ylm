package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.TourPkgProductFacade;
import com.youlema.sales.meta.FreeTravelProductInfo;
import com.youlema.sales.meta.FreeTravelProductItem;
import com.youlema.sales.meta.SearchResult;

/**
 * 自由行Service
 * 
 * @author user
 * 
 */
@Service
public class FreeTravelService {

    @Resource(name="TourPkgProductFacade")
    private TourPkgProductFacade tourPkgProductFacade;
    /**
     * 查询自由行产品列表
     * @param queryCondition
     * @return
     */
    public SearchResult<FreeTravelProductItem> queryFreeTravelProducts(FreeTravelProductQueryCondition queryCondition) {
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
