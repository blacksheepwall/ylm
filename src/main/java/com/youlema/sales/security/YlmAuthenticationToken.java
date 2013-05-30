package com.youlema.sales.security;

import org.apache.shiro.authc.AuthenticationToken;

import com.youlema.sales.meta.User;
/**
 * 
 * @author user
 *
 */
public class YlmAuthenticationToken implements AuthenticationToken {

	private final User user;
	
	public YlmAuthenticationToken(User user){
		this.user = user;
	}
	
	@Override
	public Object getPrincipal() {
		return user;
	}

	@Override
	public Object getCredentials() {
		return user.getRole();
	}

	private static final long serialVersionUID = 8316561687982045483L;

}
