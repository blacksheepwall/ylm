package com.youlema.sales.ws.mock;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.agents.OrderCustomFacade;
import com.yolema.tbss.ext.facade.fdo.OrderCustomFdo;
import com.yolema.tbss.ext.facade.result.OrderCustomResult;

@Service
public class MockOrderCustomFacade implements OrderCustomFacade {

    @Override
    public OrderCustomResult queryPageList(OrderCustomFdo orderCustomFdo) {
        throw new UnsupportedOperationException();

    }

    @Override
    public OrderCustomResult getById(Long id) {
        throw new UnsupportedOperationException();
    }

    @Override
    public OrderCustomResult deleteBatchById(Long[] idArray) {
        throw new UnsupportedOperationException();
    }

    @Override
    public OrderCustomResult save(OrderCustomFdo orderCustomFdo) {
        throw new UnsupportedOperationException();
    }

    @Override
    public OrderCustomResult update(OrderCustomFdo orderCustomFdo) {
        throw new UnsupportedOperationException();
    }

    @Override
    public OrderCustomResult delete(OrderCustomFdo orderCustomFdo) {
        throw new UnsupportedOperationException();
    }

}
