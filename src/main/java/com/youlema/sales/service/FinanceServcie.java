package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.settlement.ext.facade.fdo.RemittanceFormFdo;
import com.yolema.settlement.ext.facade.received.RemittanceFormFacade;
import com.yolema.settlement.ext.facade.result.RemittanceFormBeanResult;
import com.yolema.tbss.ext.facade.AgentsFacade;
import com.yolema.tbss.ext.facade.fdo.agents.AgentsTotalFdo;
import com.yolema.tbss.ext.facade.result.AgentsResult;
import com.youlema.sales.mapper.AgentsPaymentFactMapper;
import com.youlema.sales.mapper.AgentsTotalFactMapper;
import com.youlema.sales.mapper.meta.Agents;
import com.youlema.sales.mapper.meta.AgentsAccount;
import com.youlema.sales.mapper.meta.AgentsPaymentReportMeta;
import com.youlema.sales.mapper.meta.AgentsTotalFact;
import com.youlema.sales.mapper.meta.AgentsTotalFactExample;
import com.youlema.sales.meta.FinanceMeta;
import com.youlema.sales.meta.RemitItem;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.utils.Vo;
import com.youlema.tools.jee.pages.PageList;
import com.youlema.tools.jee.pages.PagingTools;

/**
 * 财务Service
 * 
 * @author zhushijun
 * 
 */
@Service
public class FinanceServcie {
    @Resource(name = "AgentsFacade")
    private AgentsFacade agentsFacade;
    @Resource(name = "RemittanceFormFacade")
    private RemittanceFormFacade remittanceFormFacade;
    @Resource
    private AgentsTotalFactMapper agentsTotalFactMapper;
    @Resource
    private AgentsPaymentFactMapper agentsPaymentFactMapper;

    /**
     * 根据账号获取财务统计数据
     * 
     * @param account
     * @return
     */
    public FinanceMeta readFinaceMeta(AgentsAccount account) {
        AgentsResult result = agentsFacade.getAgentsTotal(account.getAgentsAccountId());
        if (result.isSuccess()) {
            AgentsTotalFdo fdo = result.getAgentsTotalFdo();
            Vo<FinanceMeta> vo = new Vo<FinanceMeta>(FinanceMeta.class);
            return vo.inject(fdo);
        }
        return new FinanceMeta();
    }

    /**
     * 获取汇款单明细
     * 
     * @param id
     * @return
     */
    public RemittanceFormFdo getRemittFdoById(long id) {
        RemittanceFormBeanResult byId = remittanceFormFacade.getById(id);
        if (byId.isSuccess()) {
            return byId.getRemittanceFormFdo();
        }
        return null;
    }

    /**
     * 获取未核销汇款
     * 
     * @param agents
     * @return
     */
    public SearchResult<RemitItem> readUnsettleRemits(Agents agents) {
        RemittanceFormFdo fdo = new RemittanceFormFdo();
        String agentsCode = agents.getAgentsCode();
        fdo.setClaimDepart(agentsCode);
        fdo.setRemittanceStatus("2");
        RemittanceFormBeanResult result = remittanceFormFacade.queryAgentPageList(fdo);
        if (result.isSuccess()) {
            PageList<RemittanceFormFdo> pageList = result.getPageRemittanceList();
            ArrayList<RemitItem> list = new ArrayList<RemitItem>();
            Vo<RemitItem> vo = new Vo<RemitItem>(RemitItem.class);
            for (RemittanceFormFdo remittanceFormFdo : pageList) {
                RemitItem item = vo.inject(remittanceFormFdo);
                list.add(item);
            }
            PagingTools tools = pageList.getPageTools();
            int pages = tools.getPages();
            return new SearchResult<RemitItem>(pages, list);
        }
        return new SearchResult<RemitItem>(0, new ArrayList<RemitItem>(0));

    }

    /**
     * 读取总报表列表
     * 
     * @param agents
     * @return
     */
    public List<AgentsTotalFact> readTotalFacts(Agents agents) {
        AgentsTotalFactExample example = new AgentsTotalFactExample();
        AgentsTotalFactExample.Criteria criteria = example.createCriteria();
        criteria.andAgentsIdEqualTo(agents.getAgentsId());
        example.setOrderByClause("YEAR_OF_START desc");
        List<AgentsTotalFact> list = agentsTotalFactMapper.selectByExample(example);
        return list;
    }

    public List<AgentsPaymentReportMeta> readReportMetas(Agents agents, String type, int year) {
        if ("year".equalsIgnoreCase(type)) {
            return agentsPaymentFactMapper.queryYearReport(agents.getAgentsId(), year);
        }
        return agentsPaymentFactMapper.queryMonthReport(agents.getAgentsId(), year);
    }

}
