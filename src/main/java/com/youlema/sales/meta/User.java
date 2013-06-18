package com.youlema.sales.meta;

import java.io.Serializable;

public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4343188561723659218L;

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
