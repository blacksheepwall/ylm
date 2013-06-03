package com.youlema.sales.controller;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.youlema.sales.meta.ATag;
import com.youlema.sales.meta.LineVo;
import com.youlema.sales.meta.OrderVo;
import com.youlema.sales.service.AdService;



@Controller
@RequestMapping("/")
public class MainController {
	@Resource
	private AdService adService;
	
	
	@RequestMapping(value = "/index")
	public String indexPage() {
		return "login";
	}
	@RequestMapping("/main")
	public String main(ModelMap model){
		List<OrderVo> orders = adService.readLastestOrders();
		List<LineVo> lines = adService.readNewestLines();
		List<ATag> notes = adService.readNote();
		List<ATag> promotion = adService.readPromotion();
		
		model.put("orders", orders);
		model.put("lines", lines);
		model.put("notes", notes);
		model.put("promotion", promotion);
		
		return "main";
	}
	@RequestMapping("/main/{pageName}")
	public String view(@PathVariable("pageName")String path){
		return path;
	}
	
}
