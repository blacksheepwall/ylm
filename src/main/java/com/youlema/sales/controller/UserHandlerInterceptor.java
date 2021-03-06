package com.youlema.sales.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.youlema.sales.meta.User;
import com.youlema.sales.service.MsgService;
import com.youlema.sales.service.UserService;

public class UserHandlerInterceptor implements HandlerInterceptor {
    @Resource
    private UserService userService;
    @Resource
    private MsgService msgService;
    
    
    @Override
    public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
            throws Exception {
    }

    @Override
    public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
            throws Exception {
        User user = userService.getCurrentUser();
        if(arg3 != null){
        	arg3.addObject("user", user);
        	arg3.addObject("msgCount", msgService.getNewMsgCount(user));
        }
    }

    @Override
    public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2) throws Exception {
        return true;
    }

}
