package com.youlema.sales.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import net.sf.cglib.beans.BeanCopier;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.yolema.settlement.ext.facade.fdo.PaymentApplyFdo;
import com.yolema.settlement.ext.facade.fdo.RemittanceFormFdo;
import com.yolema.settlement.ext.facade.payment.PaymentApplyFacade;
import com.yolema.settlement.ext.facade.received.RemittanceFormFacade;
import com.yolema.settlement.ext.facade.result.PaymentApplyResult;
import com.yolema.settlement.ext.facade.result.RemittanceFormBeanResult;
import com.yolema.tbss.ext.facade.AgentsFacade;
import com.yolema.tbss.ext.facade.fdo.agents.AgentsTotalFdo;
import com.yolema.tbss.ext.facade.result.AgentsResult;
import com.youlema.sales.mapper.AgentsPaymentFactMapper;
import com.youlema.sales.mapper.AgentsTotalFactMapper;
import com.youlema.sales.mapper.meta.Agents;
import com.youlema.sales.mapper.meta.AgentsAccount;
import com.youlema.sales.mapper.meta.AgentsPaymentFact;
import com.youlema.sales.mapper.meta.AgentsPaymentFactExample;
import com.youlema.sales.mapper.meta.AgentsPaymentReportItem;
import com.youlema.sales.mapper.meta.AgentsPaymentReportMeta;
import com.youlema.sales.mapper.meta.AgentsTotalFact;
import com.youlema.sales.mapper.meta.AgentsTotalFactExample;
import com.youlema.sales.meta.FinanceMeta;
import com.youlema.sales.meta.RefundItem;
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
    @Resource
    private PaymentApplyFacade paymentApplyFacade;

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
            return toRemitItemResult(result);
        }
        return new SearchResult<RemitItem>(0, new ArrayList<RemitItem>(0));

    }

    private static SearchResult<RemitItem> toRemitItemResult(RemittanceFormBeanResult result) {
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

    /**
     * 年月业务报表
     * 
     * @param agents
     * @param type
     * @param year
     * @return
     */
    public List<AgentsPaymentReportMeta> readReportMetas(Agents agents, String type, int year, int month) {
        if ("year".equalsIgnoreCase(type)) {
            return agentsPaymentFactMapper.queryYearReport(agents.getAgentsId(), year);
        }
        return agentsPaymentFactMapper.queryMonthReport(agents.getAgentsId(), year, month);
    }

    /**
     * 获取报表明细列表
     * 
     * @param type
     * @param typeCode
     * @param month
     * @param year
     * @return
     */
    public List<AgentsPaymentFact> readReportDetail(Agents agents, String mainTypeCode, String typeCode, int year,
            int month) {
        AgentsPaymentFactExample example = new AgentsPaymentFactExample();
        AgentsPaymentFactExample.Criteria criteria = example.createCriteria();
        criteria.andYearOfStartEqualTo(year);
        criteria.andAgentsIdEqualTo(agents.getAgentsId());
        if (month > 0) {
            criteria.andMonthOfStartEqualTo(month);
        }
        if (StringUtils.isNotBlank(mainTypeCode)) {
            criteria.andMainTypeCodeEqualTo(mainTypeCode);
        }
        if (StringUtils.isNotBlank(typeCode)) {
            criteria.andMinorTypeCodeEqualTo(typeCode);
        }
        List<AgentsPaymentFact> selectByExample = agentsPaymentFactMapper.selectByExample(example);
        BeanCopier copier = BeanCopier.create(AgentsPaymentFact.class, AgentsPaymentReportItem.class, false);
        List<AgentsPaymentFact> list = new ArrayList<AgentsPaymentFact>(selectByExample.size());
        for (AgentsPaymentFact fact : selectByExample) {
            AgentsPaymentReportItem reportItem = new AgentsPaymentReportItem();
            copier.copy(fact, reportItem, null);
            list.add(reportItem);
        }
        return list;
    }

    public List<AgentsPaymentFact> getShowPaymentFact(Agents currentAgents) {
        return getShowPaymentFact(currentAgents, null, null);
    }

    public List<AgentsPaymentFact> getShowPaymentFact(Agents currentAgents, String mainCode, String minorCode) {
        AgentsPaymentFactExample example = new AgentsPaymentFactExample();
        AgentsPaymentFactExample.Criteria criteria = example.createCriteria();
        criteria.andAgentsIdEqualTo(currentAgents.getAgentsId());
        criteria.andUnpaidAmountIsNotNull().andUnpaidAmountNotEqualTo(BigDecimal.ZERO);
        if (StringUtils.isNotBlank(mainCode)) {
            criteria.andMainTypeCodeEqualTo(mainCode);
        }
        if (StringUtils.isNotBlank(minorCode)) {
            criteria.andMinorTypeCodeEqualTo(minorCode);
        }

        List<AgentsPaymentFact> srcList = agentsPaymentFactMapper.selectByExample(example);
        List<AgentsPaymentFact> list = new ArrayList<AgentsPaymentFact>(srcList.size());
        BeanCopier copier = BeanCopier.create(AgentsPaymentFact.class, AgentsPaymentReportItem.class, false);
        for (AgentsPaymentFact fact : srcList) {
            AgentsPaymentReportItem reportItem = new AgentsPaymentReportItem();
            copier.copy(fact, reportItem, null);
            list.add(reportItem);
        }
        return list;
    }

    /**
     * 查询汇款单列表
     * 
     * @param agents
     * 
     * @param beginDate
     * @param endDate
     * @param tickNo
     * @param status
     * @return
     */
    public SearchResult<RemitItem> queryRemittList(Agents agents, Date beginDate, Date endDate, String tickNo,
            String status) {
        RemittanceFormFdo queryFdo = new RemittanceFormFdo();
        queryFdo.setClaimDepart(agents.getAgentsCode());
        if (StringUtils.isNotBlank(status)) {
            queryFdo.setRemittanceStatus(status);
        }
        if (StringUtils.isNotBlank(tickNo)) {
            queryFdo.setRemittanceFormCode(tickNo);
        }
        RemittanceFormBeanResult result = remittanceFormFacade.queryAgentPageList(queryFdo);
        if (result.isSuccess()) {
            return toRemitItemResult(result);
        }
        return new SearchResult<RemitItem>(0, new ArrayList<RemitItem>(0));
    }

    /**
     * 查询退款列表
     * 
     * @param agents
     * @param status
     * @return
     */
    public SearchResult<RefundItem> queryRefundList(Agents agents, String status) {
        PaymentApplyResult applyResult = paymentApplyFacade
                .getPaymentApplyListForAgents(agents.getAgentsCode(), status);
        if (applyResult.isSuccess()) {
            Vo<RefundItem> vo = new Vo<RefundItem>(RefundItem.class);
            List<PaymentApplyFdo> list = applyResult.getPaymentApplyBeanList();
            List<RefundItem> items = new ArrayList<RefundItem>(list.size());
            for (PaymentApplyFdo applyFdo : list) {
                RefundItem item = vo.inject(applyFdo);
                items.add(item);
            }
            return new SearchResult<RefundItem>(1, items);
        }
        return new SearchResult<RefundItem>(0, new ArrayList<RefundItem>(0));
    }
}
