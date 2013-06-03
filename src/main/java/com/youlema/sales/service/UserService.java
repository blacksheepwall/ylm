package com.youlema.sales.service;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.youlema.sales.meta.User;
import com.youlema.sales.meta.UserRole;

@Service
public class UserService {

	public User getUser(String name, String password) {
		User user = new User();
		user.setUserName(name);
		user.setRole(UserRole.ADMIN);
		return user;
	}
	
	public User getCurrentUser(){
	    Subject subject = SecurityUtils.getSubject();
	    return (User) subject.getPrincipal();
	}
}
