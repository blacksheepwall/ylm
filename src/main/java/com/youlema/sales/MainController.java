package com.youlema.sales;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/")
public class MainController {
	@RequestMapping("/main")
	public String main(){
		return "main";
	}
}
