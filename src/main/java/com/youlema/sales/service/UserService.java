package com.youlema.sales.service;

import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.youlema.sales.mapper.AgentsAccountMapper;
import com.youlema.sales.mapper.meta.AgentsAccount;
import com.youlema.sales.mapper.meta.AgentsAccountExample;
import com.youlema.sales.mapper.meta.AgentsAccountExample.Criteria;
import com.youlema.sales.meta.ATag;
import com.youlema.sales.meta.User;
import com.youlema.sales.meta.UserRole;

@Service
public class UserService {
    @Resource
    private AgentsAccountMapper accountMapper;

    public User getUser(String name, String password) {
        AgentsAccountExample example = new AgentsAccountExample();
        Criteria criteria = example.createCriteria();
        criteria.andAccountLoginNameEqualTo(name);
        criteria.andAccountPasswordEqualTo(password);

        List<AgentsAccount> accounts = accountMapper.selectByExample(example);
        User user = new User();
        if (accounts.size() > 0) {
            user.setAccount(accounts.get(0));
        } else {
            AgentsAccount account = new AgentsAccount();
            account.setName("mockUser");
            account.setAccountLoginName(name);
            account.setSex((short) 1);
            account.setDepart("有关部门");
            account.setEmail("xxxx@xxxx.com");
            account.setQq("123456");
            account.setTelphone("0571-22222222");
            account.setMobile("13888888888");
            account.setAgentsAccountId(0L);
            user.setAccount(account);
        }

        user.setUserName(name);
        user.setRole(UserRole.ADMIN);
        return user;
    }

    public User getCurrentUser() {
        Subject subject = SecurityUtils.getSubject();
        if(subject.getPrincipal() == null){
        	return getUser("", "");
        }
        return (User) subject.getPrincipal();
    }

    public AgentsAccount getCurrentAccount() {
        return getCurrentUser().getAccount();
    }

    public List<ATag> getShortcuts() {
        ATag a1 = new ATag("出境跟团游", "/main/");
        a1.setFocus(true);
        ATag a2 = new ATag("国内跟团游", "/main/");
        ATag a3 = new ATag("我的订单", "/main/");
        ATag a4 = new ATag("整团预报", "/main/");
        return Arrays.asList(a1, a2, a3, a4);
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
