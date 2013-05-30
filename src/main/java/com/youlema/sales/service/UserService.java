package com.youlema.sales.service;

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
}
