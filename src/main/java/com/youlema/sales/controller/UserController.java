package com.youlema.sales.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 用户中心
 * @author user
 *
 */
@Controller
@RequestMapping("/u")
public class UserController {
	/**
	 * 用户中心首页
	 * @return
	 */
	@RequestMapping("")
	public String main(){
		return "user-center";
	}
	/**
	 * 我的订单列表
	 * @return
	 */
	@RequestMapping("/orders")
	public String myOrder(){
		return "user-center-myorder";
	}
	/**
	 * 业绩汇总
	 * @return
	 */
	@RequestMapping("/performance")
	public String performance(){
		return "user-center-performance";
	}
	/**
	 * 游客列表
	 * @return
	 */
	@RequestMapping("/guests")
	public String guests(){
		return "user-center-guest-list";
	}
	/**
	 * 我的收藏
	 * @return
	 */
	@RequestMapping("/myfavorite")
	public String myFavorite(){
		return "user-center-favorite";
	}
	/**
	 * 未读消息
	 * @return
	 */
	@RequestMapping("/unreadmsg")
	public String unreadMessage(){
		return "user-center-unread";
	}
	
	/**
	 * 发送消息
	 * @return
	 */
	@RequestMapping("/sendmsg")
	public String sendMessage(){
		return "user-center-send-message";
	}
	/**
	 * 消息列表
	 * @return
	 */
	@RequestMapping("/msglist")
	public String messageList(){
		return "user-center-message-list";
	}
	/**
	 * 设置
	 * @return
	 */
	@RequestMapping("/setup")
	public String setup(){
		return "user-center-setup";
	}
	/**
	 * 更换密码
	 * @return
	 */
	@RequestMapping("/changepass")
	public String changePassword(){
		return "user-center-password";
	}
	/**
	 * 用户快捷菜单
	 * @return
	 */
	@RequestMapping("/shortcut")
	public String shortcutMenu(){
		return "user-center-shortcut-menu";
	}
	/**
	 * 用户登录日志
	 * @return
	 */
	@RequestMapping("/log")
	public String userLog(){
		return "user-center-log";
	}
	
}
