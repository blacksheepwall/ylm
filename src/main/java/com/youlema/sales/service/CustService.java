package com.youlema.sales.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.OrderCustomFacade;
import com.yolema.tbss.ext.facade.fdo.order.OrderCustomFdo;
import com.youlema.sales.meta.CustomerVo;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.meta.User;

@Service
public class CustService {
    @Resource
    private OrderCustomFacade customFacade;
    
    SearchResult<CustomerVo> getCustomerVos(User user){
        OrderCustomFdo fdo = new OrderCustomFdo();
        return null;
    }
    
}
