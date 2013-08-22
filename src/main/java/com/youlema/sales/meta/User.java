package com.youlema.sales.meta;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

import com.youlema.sales.mapper.meta.Agents;
import com.youlema.sales.mapper.meta.AgentsAccount;
import com.youlema.sales.mapper.meta.AgentsRole;

public class User implements Serializable {
    /**
	 * 
	 */
    private static final long serialVersionUID = 4343188561723659218L;

    private String userName;

    private AgentsAccount account;

    private Agents agents;

    private String pass;

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    private List<AgentsRole> roles = Collections.emptyList();

    public List<AgentsRole> getRoles() {
        return roles;
    }

    public void setRoles(List<AgentsRole> roles) {
        this.roles = roles;
    }

    public Agents getAgents() {
        return agents;
    }

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

    public AgentsRole getRole() {
        if (roles.isEmpty()) {
            return new AgentsRole();
        }
        return roles.get(0);
    }

    public long getAccountId() {
        return this.account == null ? -1 : account.getAgentsAccountId();
    }

    public void setAgents(Agents agents) {
        this.agents = agents;
    }
}
