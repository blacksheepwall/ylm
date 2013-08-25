package com.youlema.sales.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yolema.settlement.ext.facade.fdo.RemittanceFormFdo;
import com.yolema.settlement.ext.facade.fdo.RemittanceOrderBillFdo;
import com.youlema.sales.mapper.meta.Agents;
import com.youlema.sales.mapper.meta.AgentsTotalFact;
import com.youlema.sales.meta.FinanceMeta;
import com.youlema.sales.meta.RemitItem;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.FinanceServcie;
import com.youlema.sales.service.UserService;

/**
 * 财务Controller
 * 
 * @author user
 * 
 */
@Controller
@RequestMapping("/finance")
public class FinanceController {
    @Resource
    private FinanceServcie financeServcie;
    @Resource
    private UserService userService;

    @RequestMapping("")
    public String main(ModelMap modelMap) {
        FinanceMeta finaceMeta = financeServcie.readFinaceMeta(userService.getCurrentAccount());

        SearchResult<RemitItem> result = financeServcie.readUnsettleRemits(userService.getCurrentAgents());

        modelMap.put("remitResult", result);
        modelMap.put("finance", finaceMeta);

        return "finance";
    }

    /**
     * 财务汇款明细
     * 
     * @param id
     * @param modelMap
     * @return
     */
    @RequestMapping("/remit/detail")
    public String remitDetail(@RequestParam("id") long id, ModelMap modelMap) {
        RemittanceFormFdo fdo = financeServcie.getRemittFdoById(id);
        if (fdo == null) {
            return "redirect:/err/404/";
        }
        List<RemittanceOrderBillFdo> billFdos = fdo.getRemittanceOrderBillFdos();
        modelMap.put("billFdos", billFdos);
        modelMap.put("result", fdo);
        return "finance-remittance";
    }

    /**
     * 总报表
     * 
     * @return
     */
    @RequestMapping("/report/total")
    public String reportTotal(ModelMap modelMap) {
        Agents agents = userService.getCurrentAgents();
        List<AgentsTotalFact> totalFacts = financeServcie.readTotalFacts(agents);
        modelMap.put("list", totalFacts);
        return "finance-general-report";
    }

    /**
     * 下载总报表
     * 
     * @param response
     */
    @RequestMapping("/report/total/down")
    public void downloadReportTotal(HttpServletResponse response) {

    }

    /**
     * 年月报表
     * 
     * @param type
     * @param modelMap
     * @return
     */
    @RequestMapping("/report/")
    public String report(@RequestParam("type") String type, ModelMap modelMap) {
        modelMap.put("type", type);
        return "finance-report";
    }

}
