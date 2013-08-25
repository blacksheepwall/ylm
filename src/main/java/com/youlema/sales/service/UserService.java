package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.AgentsFacade;
import com.yolema.tbss.ext.facade.fdo.agents.AgentsAccountFdo;
import com.yolema.tbss.ext.facade.result.BaseResult;
import com.youlema.sales.mapper.AgentsAccountMapper;
import com.youlema.sales.mapper.AgentsMapper;
import com.youlema.sales.mapper.AgentsRoleMapper;
import com.youlema.sales.mapper.AssAgentsAccountRoleMapper;
import com.youlema.sales.mapper.meta.Agents;
import com.youlema.sales.mapper.meta.AgentsAccount;
import com.youlema.sales.mapper.meta.AgentsAccountExample;
import com.youlema.sales.mapper.meta.AgentsAccountExample.Criteria;
import com.youlema.sales.mapper.meta.AgentsRole;
import com.youlema.sales.mapper.meta.AgentsRoleExample;
import com.youlema.sales.mapper.meta.AssAgentsAccountRoleExample;
import com.youlema.sales.mapper.meta.AssAgentsAccountRoleKey;
import com.youlema.sales.meta.User;

@Service
public class UserService {
    @Resource
    private AgentsAccountMapper accountMapper;
    @Resource
    private AgentsMapper agentsMapper;
    @Resource
    private AssAgentsAccountRoleMapper agentsAccountRoleMapper;
    @Resource
    private AgentsRoleMapper roleMapper;
    @Resource
    private AgentsFacade agentsFacade;

    public User getUser(String name, String password) {
        AgentsAccountFdo acctFdo = new AgentsAccountFdo();
        acctFdo.setAccountLoginName(name);
        acctFdo.setAccountPassword(password);
        BaseResult result = agentsFacade.chickLogin(acctFdo);
        List<AgentsAccount> accounts = new ArrayList<AgentsAccount>();
        if (result.isSuccess()) {
            AgentsAccountExample example = new AgentsAccountExample();
            Criteria criteria = example.createCriteria();
            criteria.andAccountLoginNameEqualTo(name);
            accounts = accountMapper.selectByExample(example);
        } else {
            return null;
        }
        User user = new User();
        if (accounts.size() > 0) {
            AgentsAccount account = accounts.get(0);
            user.setAccount(account);
            Agents agents = this.agentsMapper.selectByPrimaryKey(account.getAgentsId());
            user.setAgents(agents);

            List<AgentsRole> roles = getRoles(account.getAgentsAccountId());
            user.setRoles(roles);
        } else {
            return null;
        }
        user.setPass(password);
        user.setUserName(name);
        return user;
    }

    private List<AgentsRole> getRoles(Long agentsAccountId) {
        AssAgentsAccountRoleExample example = new AssAgentsAccountRoleExample();
        AssAgentsAccountRoleExample.Criteria criteria = example.createCriteria();
        criteria.andAgentsAccountIdEqualTo(agentsAccountId);
        List<AssAgentsAccountRoleKey> tempList = agentsAccountRoleMapper.selectByExample(example);
        if (tempList.isEmpty()) {
            return Collections.emptyList();
        }

        List<Long> ids = new ArrayList<Long>(tempList.size());
        for (AssAgentsAccountRoleKey assAgentsAccountRoleKey : tempList) {
            ids.add(assAgentsAccountRoleKey.getAgentsRoleId());
        }
        AgentsRoleExample agentsRoleExample = new AgentsRoleExample();
        AgentsRoleExample.Criteria agentsCriteria = agentsRoleExample.createCriteria();
        agentsCriteria.andAgentsPrivilegeIdIn(ids);
        return roleMapper.selectByExample(agentsRoleExample);
    }

    public User getCurrentUser() {
        Subject subject = SecurityUtils.getSubject();
        if (subject.getPrincipal() == null) {
            return getUser("", "");
        }
        return (User) subject.getPrincipal();
    }

    public AgentsAccount getCurrentAccount() {
        return getCurrentUser().getAccount();
    }

    public Agents getCurrentAgents() {
        return getCurrentUser().getAgents();
    }

    /**
     * 更新Account数据
     * 
     * @param account
     */
    public void updateAccount(AgentsAccount account) {
        this.accountMapper.updateByPrimaryKey(account);
    }

    /**
     * 更新密码
     * 
     * @param agentsAccountId
     * @param newPass
     * @return
     */
    public boolean updatePassword(Long agentsAccountId, String newPass) {
        AgentsAccount account = accountMapper.selectByPrimaryKey(agentsAccountId);
        if (account == null) {
            return false;
        }
        account.setAccountPassword(newPass);
        return this.accountMapper.updateByPrimaryKey(account) > 0;
    }
}
