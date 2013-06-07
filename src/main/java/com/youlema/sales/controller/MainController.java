package com.youlema.sales.controller;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.youlema.sales.meta.ATag;
import com.youlema.sales.meta.LineVo;
import com.youlema.sales.meta.OrderVo;
import com.youlema.sales.service.AdService;
import com.youlema.sales.service.UserService;



@Controller
@RequestMapping("/")
public class MainController {
	@Resource
	private AdService adService;
	@Resource
	private UserService userService;
	
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
		List<ATag> shortcuts = userService.getShortcuts();
		List<ATag> noteList = adService.getSystemNoteList();
		model.put("systemNoteList", noteList);
		model.put("shortcuts", shortcuts);
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

	@RequestMapping("/inland")
	public String inlandTravel(){
	    return "inland-travel";
	}
	@RequestMapping("/logout")
	public String logout(){
	    SecurityUtils.getSubject().logout();
	    return "redirect:/index/";
	}
}
