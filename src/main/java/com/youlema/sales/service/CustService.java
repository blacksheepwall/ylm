package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.OrderCustomFacade;
import com.yolema.tbss.ext.facade.fdo.order.OrderCustomFdo;
import com.yolema.tbss.ext.facade.result.OrderCustomResult;
import com.youlema.sales.meta.CustomerVo;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.meta.User;
import com.youlema.tools.jee.pages.PageList;

@Service
public class CustService {
    @Resource
    private OrderCustomFacade customFacade;
    /**
     * 获取客户列表
     * @param user
     * @param pageNum
     * @return
     */
    public SearchResult<CustomerVo> getCustomerVos(User user, int pageNum) {
        OrderCustomFdo fdo = new OrderCustomFdo();
        fdo.setEtpCode(user.getAgents().getAgentsCode());
        fdo.setReceptionPersonnel(user.getUserName());
        OrderCustomResult orderCustomResult = customFacade.queryAgentsCustomList(fdo);
        if (orderCustomResult.isSuccess()) {
            PageList<OrderCustomFdo> pageList = orderCustomResult.getPageList();
            List<CustomerVo> list = new ArrayList<CustomerVo>();
            for (OrderCustomFdo orderCustomFdo : pageList) {
                CustomerVo vo = CustomerVo.fromFdo(orderCustomFdo);
                list.add(vo);
            }
            return new SearchResult<CustomerVo>(pageList.getPageTools().getPages(), list);
        }
        return new SearchResult<CustomerVo>(0, new ArrayList<CustomerVo>(0));
    }

}
