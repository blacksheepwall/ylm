package com.youlema.sales.ws.mock;

import com.yolema.settlement.ext.facade.common.Result;
import com.yolema.settlement.ext.facade.fdo.RemittanceFormFdo;
import com.yolema.settlement.ext.facade.received.RemittanceFormFacade;
import com.yolema.settlement.ext.facade.result.RemittanceFormBeanResult;

public class MockRemittanceFormFacade implements RemittanceFormFacade {

    @Override
    public Result delete(Long arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Result deleteBatchById(Long[] arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public RemittanceFormBeanResult findLatestRemittanceForm() {
        throw new UnsupportedOperationException();
    }

    @Override
    public RemittanceFormBeanResult getById(Long arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public RemittanceFormBeanResult queryAgentPageList(RemittanceFormFdo arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public RemittanceFormBeanResult queryPageList(RemittanceFormFdo arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public Result saveRemittance(RemittanceFormFdo arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public RemittanceFormBeanResult viewRemittanceForm(Long[] arg0) {
        throw new UnsupportedOperationException();
    }

}
