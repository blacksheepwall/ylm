package com.youlema.sales.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@RequestMapping("/product")
public class ProductController {
	/**
	 * @return
	 */
	@RequestMapping("/detail")
	public String productDetailInfo(@RequestParam("id")long productId){
		return "news";
	}
	
}
