package com.youlema.sales.service;

import java.util.Arrays;
import java.util.List;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;

import com.youlema.sales.meta.ATag;
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

    public User getCurrentUser() {
        Subject subject = SecurityUtils.getSubject();
        return (User) subject.getPrincipal();
    }

    public List<ATag> getShortcuts() {
        ATag a1 = new ATag("出境跟团游", "/main.do");
        a1.setFocus(true);
        ATag a2 = new ATag("国内跟团游", "/main.do");
        ATag a3 = new ATag("我的订单", "/main.do");
        ATag a4 = new ATag("整团预报", "/main.do");
        return Arrays.asList(a1, a2, a3, a4);
    }
}
