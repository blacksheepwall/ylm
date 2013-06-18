package com.youlema.sales.meta;

import java.io.Serializable;

import com.youlema.sales.mapper.meta.AgentsAccount;

public class User implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4343188561723659218L;

	private String userName;

	private UserRole role;
	
	private AgentsAccount account;

	public AgentsAccount getAccount() {
        return account;
    }

    public void setAccount(AgentsAccount account) {
        this.account = account;
    }

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

	public long getAccountId(){
	    return this.account == null ? -1 : account.getAgentsAccountId();
	}
}
