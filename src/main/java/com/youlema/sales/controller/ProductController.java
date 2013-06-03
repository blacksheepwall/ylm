package com.youlema.sales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
@RequestMapping("/product")
public class ProductController {
	/**
	 * @return
	 */
	@RequestMapping("/detail")
	public String productDetailInfo(@RequestParam("id")long productId){
		return "news";
	}
	
	@RequestMapping("line")
	public String lineInfo(@RequestParam("id")long lineId){
	    return productDetailInfo(lineId);
	}
	
}
