package com.youlema.sales.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.meta.BusinessType;

@Controller
@RequestMapping("/product")
public class ProductController {
	/**
	 * 产品详情页
	 * 
	 * @return
	 */
	@RequestMapping("/detail")
	public String productDetailInfo(
			@RequestParam(value = "id") long productId,
			ModelMap modelMap) {
		modelMap.put("productId", productId);
		modelMap.put("type", BusinessType.LINE.name());
		return "product";
	}

	@RequestMapping("/line")
	public String lineInfo(@RequestParam("id") long lineId, ModelMap modelMap) {
		return productDetailInfo(lineId, modelMap);
	}

	/**
	 * 查询国内产品列表
	 * 
	 * @return
	 */
	@RequestMapping("/queryInland")
	public String inland(HttpServletRequest request) {

		return "redirect:/main/";
	}

	/**
	 * 国外产品
	 * 
	 * @return
	 */
	@RequestMapping("/outland")
	public String outland(HttpServletRequest request) {
		return "redirect:/main/";
	}

}
