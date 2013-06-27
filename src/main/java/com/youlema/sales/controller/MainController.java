package com.youlema.sales.controller;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.youlema.sales.meta.ATag;
import com.youlema.sales.meta.City;
import com.youlema.sales.meta.LineVo;
import com.youlema.sales.meta.Region;
import com.youlema.sales.service.AdService;
import com.youlema.sales.service.DateCount;
import com.youlema.sales.service.PriceRange;
import com.youlema.sales.service.ProductService;
import com.youlema.sales.service.TrafficType;
import com.youlema.sales.service.UserService;



@Controller
@RequestMapping("/")
public class MainController {
	@Resource
	private AdService adService;
	@Resource
	private UserService userService;
	@Resource
	ProductService productService;
	
	@RequestMapping(value = "/index")
	public String indexPage() {
		return "login";
	}
	@RequestMapping("/main")
	public String main(ModelMap model){
		List<LineVo> lines = adService.readNewestLines();
		List<ATag> notes = adService.readNote();
		List<ATag> promotion = adService.readPromotion();
		List<ATag> shortcuts = userService.getShortcuts();
		List<ATag> noteList = adService.getSystemNoteList();
		model.put("systemNoteList", noteList);
		model.put("shortcuts", shortcuts);
		model.put("lines", lines);
		model.put("notes", notes);
		model.put("promotion", promotion);
		return "main";
	}
	@RequestMapping("/main/{pageName}")
	public String view(@PathVariable("pageName")String path){
		return path;
	}

	@RequestMapping("/inland")
	public String inlandTravel(ModelMap modelMap){
	    List<Region> regions = productService.listInlandRegions();
	    List<City> startCitys = productService.listStartCitys(null);
	    
        modelMap.put("regions", regions);
	    modelMap.put("startCitys", startCitys);
	    modelMap.put("dates", DateCount.values());
	    modelMap.put("prices",PriceRange.values());
	    modelMap.put("traffics", TrafficType.values());
	    return "inland-travel";
	}
	@RequestMapping("/logout")
	public String logout(){
	    SecurityUtils.getSubject().logout();
	    return "redirect:/index/";
	}
}
