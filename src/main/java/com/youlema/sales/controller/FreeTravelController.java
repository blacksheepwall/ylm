package com.youlema.sales.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.meta.FreeTravelProductInfo;
import com.youlema.sales.meta.FreeTravelProductItem;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.FreeTravelService;

/**
 * 自由行Controller
 * 
 * @author zhushijun
 * 
 */
@Controller
@RequestMapping("/ziyouxing")
public class FreeTravelController {
    @Resource
    private FreeTravelService freeTravelService;

    /**
     * 自由行首页
     * 
     * @return
     */
    @RequestMapping("")
    public String main(ModelMap modelMap) {
        SearchResult<FreeTravelProductItem> searchResult = freeTravelService.queryFreeTravelProducts(null);
        modelMap.put("result", searchResult);

        return "free-travel";
    }

    /**
     * 
     * @param queryText
     * @param beginDate
     * @param endDate
     * @param outboundLine
     * @param inlandLine
     * @param leaveCity
     * @param type
     * @throws IOException
     */
    @RequestMapping("/query")
    public void queryFreeTravel(@RequestParam(value = "queryText", required = false) String queryText,
            @RequestParam(value = "beginDate", required = false) String beginDate,
            @RequestParam(value = "endDate", required = false) String endDate,
            @RequestParam(value = "outboundLine", required = false) String outboundLine,
            @RequestParam(value = "inlandLine", required = false) String inlandLine,
            @RequestParam(value = "leaveCity", required = false) String leaveCity,
            @RequestParam(value = "type", required = false) String type, HttpServletResponse response)
            throws IOException {

        SearchResult<FreeTravelProductItem> searchResult = freeTravelService.queryFreeTravelProducts(null);
        JsonUtils.writeToJson(searchResult, response);
    }

    @RequestMapping("/detail")
    public String detail(@RequestParam("id") long id, ModelMap modelMap) {
        SearchResult<FreeTravelProductInfo> result = freeTravelService.getFreeTravelProductById(id);
        modelMap.put("result", result);
        return "free-travel-view";
    }

}
