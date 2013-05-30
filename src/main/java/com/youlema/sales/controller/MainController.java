package com.youlema.sales.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/")
public class MainController {

	@RequestMapping(value = "/index")
	public String indexPage() {
		return "login";
	}
	@RequestMapping("/main")
	public String main(){
		return "main";
	}
	@RequestMapping("/main/{pageName}")
	public String view(@PathVariable("pageName")String path){
		return path;
	}
	
}
