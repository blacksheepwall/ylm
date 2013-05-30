package com.youlema.sales.controller;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.meta.User;
import com.youlema.sales.security.YlmAuthenticationToken;
import com.youlema.sales.service.UserService;

/**
 * µÇÂ½Controller
 * 
 * @author zhushijun
 * 
 */
@Controller
@RequestMapping("/")
public class LoginController {
	@Resource
	private UserService userService;

	@RequestMapping(value = "/login" ,method=RequestMethod.POST)
	public String login(@RequestParam("name") String name, @RequestParam("pass") String password) {
		User user = userService.getUser(name, password);
		if (user != null) {
			SecurityUtils.getSubject().login(new YlmAuthenticationToken(user));
			return "redirect:/main.do";
		}
		return "redirect:/common/403.do";

	}

}
