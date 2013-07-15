package com.youlema.sales.controller;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.youlema.sales.meta.Bulletin;
import com.youlema.sales.meta.City;
import com.youlema.sales.meta.ProductItem;
import com.youlema.sales.meta.Region;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.AdService;
import com.youlema.sales.service.BulletinService;
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
	private ProductService productService;
	@Resource
	private BulletinService bulletinService;
	
	@RequestMapping(value = "/index")
	public String indexPage() {
		return "login";
	}
	@RequestMapping("/main")
	public String main(ModelMap model){
	    SearchResult<Bulletin> bulletinResult = bulletinService.getBulletinList();
	    model.put("bulletinResult", bulletinResult);
	    SearchResult<ProductItem> hotProducts = productService.listHotProduct();
	    model.put("hotProducts", hotProducts);
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
