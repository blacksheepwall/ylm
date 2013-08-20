package com.youlema.sales.ws.mock;

import java.math.BigDecimal;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.AgentsFacade;
import com.yolema.tbss.ext.facade.fdo.agents.AgentsTotalFdo;
import com.yolema.tbss.ext.facade.result.AgentsResult;

@Service("MockAgentsFacade")
public class MockAgentsFacade implements AgentsFacade {

    @Override
    public AgentsResult getAgentsTotal(Long arg0) {
        AgentsResult result = new AgentsResult(true);
        AgentsTotalFdo fdo = new AgentsTotalFdo();
        fdo.setAccountPeriod(new BigDecimal("1002233.12"));
        fdo.setOutOfAccountPeriod(new BigDecimal("1002233.12"));
        fdo.setUnPaidTotal(new BigDecimal("1002233.12"));
        fdo.setOtherTotalOfTourists(12344565);
        fdo.setTotalOfTourists(23456);
        fdo.setTotalOfTouristsForYear(456567);
        result.setAgentsTotalFdo(fdo);
        return result;
    }

    @Override
    public AgentsResult getByAgentsCode(String arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public AgentsResult getById(Long arg0) {
        throw new UnsupportedOperationException();
    }

}
