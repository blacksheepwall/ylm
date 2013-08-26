package com.youlema.sales.controller;

import java.util.ArrayList;
import java.util.HashMap;
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
import com.youlema.sales.mapper.meta.AgentsPaymentFact;
import com.youlema.sales.mapper.meta.AgentsPaymentReportMeta;
import com.youlema.sales.mapper.meta.AgentsTotalFact;
import com.youlema.sales.mapper.meta.ProductType;
import com.youlema.sales.meta.FinanceMeta;
import com.youlema.sales.meta.RemitItem;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.FinanceServcie;
import com.youlema.sales.service.ProductTypeService;
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
    @Resource
    private ProductTypeService productTypeService;

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
    @RequestMapping("/report")
    public String report(@RequestParam("type") String type,
            @RequestParam(value = "year", required = false, defaultValue = "2013") int year,
            @RequestParam(value = "month", required = false, defaultValue = "-1") int month, ModelMap modelMap) {
        modelMap.put("type", type);
        List<AgentsPaymentReportMeta> metas = financeServcie.readReportMetas(userService.getCurrentAgents(), type,
                year, month);

        List<AgentsPaymentReportMeta> metas1 = new ArrayList<AgentsPaymentReportMeta>();
        List<AgentsPaymentReportMeta> metas2 = new ArrayList<AgentsPaymentReportMeta>();
        List<AgentsPaymentReportMeta> metas3 = new ArrayList<AgentsPaymentReportMeta>();
        List<ProductType> types = productTypeService.listProductTypes();
        HashMap<String, String> typeMap = new HashMap<String, String>(types.size());
        for (ProductType productType : types) {
            typeMap.put(productType.getTypeCode(), productType.getProductTypeName());
        }

        for (AgentsPaymentReportMeta meta : metas) {
            String mainTypeCode = meta.getMainTypeCode();
            if ("GN".equalsIgnoreCase(mainTypeCode)) {
                metas2.add(meta);
            } else if ("GJ".equalsIgnoreCase(mainTypeCode)) {
                metas1.add(meta);
            } else {
                metas3.add(meta);
            }
            String minorName = typeMap.get(meta.getMinorTypeCode());
            if (minorName != null) {
                meta.setMinorTypeCodeName(minorName);
            }
        }
        modelMap.put("metas1", metas1);
        modelMap.put("metas2", metas2);
        modelMap.put("metas3", metas3);
        return "finance-report";
    }

    @RequestMapping("/report/detail")
    public String reportDetail(@RequestParam("mainTypeCode") String mainTypeCode,
            @RequestParam("minorTypeCode") String minorTypeCode, @RequestParam("year") int year,
            @RequestParam(value = "month", required = false, defaultValue = "-1") int month, ModelMap modelMap) {
        List<AgentsPaymentFact> items = financeServcie.readReportDetail(mainTypeCode, minorTypeCode, year, month);
        modelMap.put("items", items);
        return "finance-report-detail";
    }

    /**
     * 交易信息应付款统计
     * 
     * @param modelMap
     * @return
     */
    public String paymentMain(ModelMap modelMap) {
        return "finance-payable-amount";
    }

    /**
     * 交易信息应付款明细
     * 
     * @param modelMap
     * @return
     */
    public String paymentDetail(ModelMap modelMap) {
        return "finance-payable-detail";
    }

}
