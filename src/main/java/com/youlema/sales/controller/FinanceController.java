package com.youlema.sales.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.yolema.settlement.ext.facade.fdo.RemittanceFormFdo;
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

    @RequestMapping("/remit/detail")
    public String remitDetail(@RequestParam("id") long id, ModelMap modelMap) {
        RemittanceFormFdo fdo = financeServcie.getRemittFdoById(id);
        modelMap.put("result", fdo);
        return "finance-remittance";
    }
}
