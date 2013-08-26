package com.youlema.sales.controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
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
import com.youlema.sales.meta.PaymentFactStatisticItem;
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
        HashMap<String, String> typeMap = getTypesMap();

        for (AgentsPaymentReportMeta meta : metas) {
            String mainTypeCode = meta.getMainTypeCode();
            if ("GN".equalsIgnoreCase(mainTypeCode)) {
                metas2.add(meta);
            } else if ("CJ".equalsIgnoreCase(mainTypeCode)) {
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

    private HashMap<String, String> getTypesMap() {
        List<ProductType> types = productTypeService.listProductTypes();
        HashMap<String, String> typeMap = new HashMap<String, String>(types.size());
        for (ProductType productType : types) {
            typeMap.put(productType.getTypeCode(), productType.getProductTypeName());
        }
        return typeMap;
    }

    @RequestMapping("/report/detail")
    public String reportDetail(@RequestParam("mainTypeCode") String mainTypeCode,
            @RequestParam("minorTypeCode") String minorTypeCode, @RequestParam("year") int year,
            @RequestParam(value = "month", required = false, defaultValue = "-1") int month, ModelMap modelMap) {
        List<AgentsPaymentFact> items = financeServcie.readReportDetail(userService.getCurrentAgents(), mainTypeCode,
                minorTypeCode, year, month);
        HashMap<String, String> map = getTypesMap();
        modelMap.put("minorType", map.get(minorTypeCode));
        String mainType = "港澳台线路";
        if ("GN".equalsIgnoreCase(mainTypeCode)) {
            mainType = "国内线路";
        } else if ("CJ".equalsIgnoreCase(mainTypeCode)) {
            mainType = "境外线路";
        }
        modelMap.put("year", year);
        modelMap.put("month", month);
        modelMap.put("mainType", mainType);
        modelMap.put("items", items);
        return "finance-report-detail";
    }

    /**
     * 交易信息应付款统计
     * 
     * @param modelMap
     * @return
     */
    @RequestMapping("/payment")
    public String paymentMain(ModelMap modelMap) {
        List<AgentsPaymentFact> allList = financeServcie.getShowPaymentFact(userService.getCurrentAgents());
        HashMap<String, String> typesMap = getTypesMap();
        PaymentFactStatistic statistic1 = new PaymentFactStatistic("GJ", typesMap);
        PaymentFactStatistic statistic2 = new PaymentFactStatistic("CJ", typesMap);
        PaymentFactStatistic statistic3 = new PaymentFactStatistic("GT", typesMap);
        List<PaymentFactStatistic> statisticList = Arrays.asList(statistic1, statistic2, statistic3);
        for (AgentsPaymentFact fact : allList) {
            String code = fact.getMainTypeCode();
            for (PaymentFactStatistic statistic : statisticList) {
                if (statistic.mainCode.equalsIgnoreCase(code)) {
                    statistic.addFact(fact);
                }
            }
        }
        if (statistic1.total.compareTo(BigDecimal.ZERO) > 0) {
            modelMap.put("statistic1", statistic1);
        }
        if (statistic2.total.compareTo(BigDecimal.ZERO) > 0) {
            modelMap.put("statistic2", statistic2);
        }
        if (statistic3.total.compareTo(BigDecimal.ZERO) > 0) {
            modelMap.put("statistic3", statistic3);
        }
        return "finance-payable-amount";
    }

    /**
     * 交易统计明细
     * 
     * @param modelMap
     * @return
     */
    @RequestMapping("/payment/detail")
    public String paymentDetail(@RequestParam(value = "mainCode", required = false) String mainTypeCode,
            @RequestParam(value = "minorCode", required = false) String minorTypeCode, ModelMap modelMap) {
        List<AgentsPaymentFact> allList = financeServcie.getShowPaymentFact(userService.getCurrentAgents(),
                mainTypeCode, minorTypeCode);
        List<ProductType> types = productTypeService.listProductTypes();
        modelMap.put("list", allList);
        modelMap.put("types", types);
        return "finance-payable-detail";
    }

    /**
     * 应付款计算器
     * 
     * @author zhushijun
     * 
     */
    public static class PaymentFactStatistic {

        BigDecimal in = BigDecimal.ZERO;

        BigDecimal out = BigDecimal.ZERO;

        BigDecimal total = BigDecimal.ZERO;

        public BigDecimal getIn() {
            return in;
        }

        public BigDecimal getOut() {
            return out;
        }

        public BigDecimal getTotal() {
            return total;
        }

        public String getMainCode() {
            return mainCode;
        }

        private HashMap<String, PaymentFactStatisticItem> map = new HashMap<String, PaymentFactStatisticItem>();

        private String mainCode;

        private HashMap<String, String> typesMap;

        public PaymentFactStatistic(String mainCode, HashMap<String, String> typesMap) {
            this.mainCode = mainCode;
            this.typesMap = typesMap;
        }

        public Collection<PaymentFactStatisticItem> getItems() {
            return map.values();
        }

        /**
         * 添加明细
         * 
         * @param fact
         */
        public void addFact(AgentsPaymentFact fact) {
            PaymentFactStatisticItem statisticItem = map.get(fact.getMinorTypeCode());
            if (statisticItem == null) {
                statisticItem = new PaymentFactStatisticItem();
                statisticItem.setMinorTypeCode(fact.getMinorTypeCode());
                statisticItem.setMainTypeCode(fact.getMainTypeCode());
                statisticItem.setMinorType(typesMap.get(fact.getMinorTypeCode()));
                map.put(fact.getMinorTypeCode(), statisticItem);
            }
            BigDecimal unpaidAmount = fact.getUnpaidAmount();
            if (fact.getGmtDeadline().getTime() > System.currentTimeMillis()) {
                out = out.add(unpaidAmount);
                statisticItem.setOutPaymentDaysAmount(statisticItem.getOutPaymentDaysAmount().add(unpaidAmount));
            } else {
                in = in.add(unpaidAmount);
                statisticItem.setInPaymentDaysAmount(statisticItem.getInPaymentDaysAmount().add(unpaidAmount));
            }
            statisticItem.setTotalAmount(statisticItem.getTotalAmount().add(unpaidAmount));
            total = total.add(unpaidAmount);
        }
    }
}
