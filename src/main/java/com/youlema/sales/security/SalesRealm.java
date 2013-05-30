package com.youlema.sales.security;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import com.youlema.sales.meta.User;
import com.youlema.sales.meta.UserRole;

public class SalesRealm extends AuthorizingRealm {

	public SalesRealm() {

		setAuthenticationTokenClass(YlmAuthenticationToken.class);
	}

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(
			PrincipalCollection principals) {
		SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
		User user = (User) principals.asList().get(0);
		UserRole role = user.getRole();
		info.addRole(role.toString());
		return info;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(
			AuthenticationToken token) throws AuthenticationException {
		User principal = (User) token.getPrincipal();
		Object credentials = token.getCredentials();
		SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(principal,
				credentials, getName());
		return info;
	}

}
