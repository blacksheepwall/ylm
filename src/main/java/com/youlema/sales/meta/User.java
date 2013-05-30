package com.youlema.sales.meta;

public class User {
	private String userName;

	private UserRole role;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setRole(UserRole role) {
		this.role = role;
	}

	public UserRole getRole() {
		return role;
	}

}
