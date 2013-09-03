package com.youlema.sales.controller;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.youlema.sales.mapper.meta.AgentsAccount;
import com.youlema.sales.mapper.meta.AgentsFavorites;
import com.youlema.sales.meta.BusinessType;
import com.youlema.sales.meta.MessageItem;
import com.youlema.sales.meta.OrderVo;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.meta.User;
import com.youlema.sales.service.FavoriteService;
import com.youlema.sales.service.MsgService;
import com.youlema.sales.service.OrderService;
import com.youlema.sales.service.UserService;

/**
 * 用户中心
 * 
 * @author user
 * 
 */
@Controller
@RequestMapping("/u")
public class UserController {
    @Resource
    private FavoriteService favoriteService;
    @Resource
    private UserService userService;
    @Resource
    private MsgService msgService;
    @Resource
    private OrderService orderService;

    /**
     * 用户中心首页
     * 
     * @return
     */
    @RequestMapping("")
    public String main(ModelMap modelMap) {
        User currentUser = userService.getCurrentUser();
        SearchResult<MessageItem> msgList = msgService.getNewMsgList(currentUser, 1);
        modelMap.put("unreadMsg", msgList);
        SearchResult<OrderVo> orderResult = orderService.getLastOrders(10, currentUser);
        modelMap.put("orderResult", orderResult);
        return "user-center";
    }

    /**
     * 我的订单列表
     * 
     * @return
     */
    @RequestMapping("/orders")
    public String myOrder(ModelMap modelMap,
            @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
        User currentUser = userService.getCurrentUser();
        SearchResult<OrderVo> orderResult = orderService.getOrderVosByUser(currentUser, page, 20);
        modelMap.put("orderResult", orderResult);
        return "user-center-myorder";
    }

    /**
     * 业绩汇总
     * 
     * @return
     */
    @RequestMapping("/performance")
    public String performance(ModelMap modelMap) {
        return "user-center-performance";
    }

    /**
     * 游客列表
     * 
     * @return
     */
    @RequestMapping("/guests")
    public String guests() {
        return "user-center-guest-list";
    }

    /**
     * 我的收藏
     * 
     * @return
     */
    @RequestMapping("/myfavorite")
    public String myFavorite(ModelMap modelMap) {
        User currentUser = userService.getCurrentUser();
        List<AgentsFavorites> favoriteList = favoriteService.getFavoriteList(currentUser.getAccountId());
        modelMap.put("favoriteList", favoriteList);

        return "user-center-favorite";
    }

    /**
     * 添加收藏
     * 
     * @param type
     * @param id
     * @param response
     * @throws IOException
     */
    @RequestMapping("/addFavorite")
    public void addFavorite(@RequestParam("type") String type, @RequestParam("id") long id, HttpServletResponse response)
            throws IOException {
        User currentUser = userService.getCurrentUser();
        BusinessType businessType = BusinessType.valueOf(type.toUpperCase());
        if (businessType == null) {
            JsonUtils.writeToErrJson(null, "business type is error", response);
        } else {
            boolean success = favoriteService.addFavorite(currentUser.getAccountId(), businessType, id);
            if (success) {
                JsonUtils.writeToJson("SUCCESS", response);
            } else {
                JsonUtils.writeToErrJson("FAIL", "add favorite fail", response);
            }
        }
    }

    /**
     * 取消收藏
     * 
     * @param favId
     * @param response
     * @throws IOException
     */
    @RequestMapping("/removeFavorite")
    public void removeFavorite(@RequestParam("fid") long favId, HttpServletResponse response) throws IOException {
        this.favoriteService.removeFavorite(favId);
        JsonUtils.writeToJson("SUCCESS", response);
    }

    /**
     * 未读消息
     * 
     * @return
     */
    @RequestMapping("/unreadmsg")
    public String unreadMessage(ModelMap modelMap) {
        User currentUser = userService.getCurrentUser();
        SearchResult<MessageItem> msgList = msgService.getNewMsgList(currentUser, 1);
        modelMap.put("unreadMsg", msgList);
        return "user-center-unread";
    }

    /**
     * 发送消息
     * 
     * @return
     */
    @RequestMapping("/sendmsg")
    public String sendMessage() {
        return "user-center-send-message";
    }

    /**
     * 消息列表
     * 
     * @return
     */
    @RequestMapping("/msglist")
    public String messageList(ModelMap modelMap) {
        User user = userService.getCurrentUser();
        SearchResult<MessageItem> inboxMessages = msgService.getInboxMessageList(user);
        modelMap.put("inboxMessages", inboxMessages);
        SearchResult<MessageItem> sendMessageList = msgService.getSendMessageList(user);
        modelMap.put("outboxMessages", sendMessageList);
        return "user-center-message-list";
    }

    /**
     * 消息详情
     * 
     * @param id
     * @return
     */
    @RequestMapping("/msginfo")
    public String message(@RequestParam("id") long id, ModelMap modelMap) {
        MessageItem item = msgService.getInboxMessage(id);
        modelMap.put("message", item);
        return "user-center-message";
    }

    /**
     * 回复消息
     * 
     * @param id
     * @param content
     * @param title
     * @param response
     * @throws IOException
     */
    @RequestMapping("/replymsg")
    public void replyMsg(@RequestParam("id") long id, @RequestParam("content") String content,
            @RequestParam(value = "title", required = false, defaultValue = "") String title,
            HttpServletResponse response) throws IOException {
        User user = userService.getCurrentUser();
        if (msgService.reply(title, content, user, id)) {
            JsonUtils.writeToJson("SUCCESS", response);
        } else {
            JsonUtils.writeToErrJson("FAIL", "FAIL", response);
        }
    }

    /**
     * 个人设置
     * 
     * @return
     */
    @RequestMapping("/setup")
    public String setup(ModelMap modelMap) {
        User currentUser = userService.getCurrentUser();
        AgentsAccount account = currentUser.getAccount();
        modelMap.put("account", account);
        return "user-center-setup";
    }

    /**
     * 更新个人设置
     * 
     * @param request
     * @return
     * @throws ServletRequestBindingException
     * @throws IOException
     */
    @RequestMapping("/updateSetup")
    public void updateSetup(HttpServletRequest request, HttpServletResponse response)
            throws ServletRequestBindingException, IOException {
        AgentsAccount account = userService.getCurrentAccount();
        String userName = ServletRequestUtils.getStringParameter(request, "userName");
        String depart = ServletRequestUtils.getStringParameter(request, "depart");
        String telphone = ServletRequestUtils.getStringParameter(request, "telphone");
        String mobile = ServletRequestUtils.getStringParameter(request, "mobile");
        String email = ServletRequestUtils.getStringParameter(request, "email");
        String qq = ServletRequestUtils.getStringParameter(request, "qq");
        int sex = ServletRequestUtils.getIntParameter(request, "sex");
        String fax = ServletRequestUtils.getStringParameter(request, "fax");
        account.setSex(sex != 0);
        account.setName(userName);
        account.setDepart(depart);
        account.setTelphone(telphone);
        account.setMobile(mobile);
        account.setEmail(email);
        account.setQq(qq);
        account.setFax(fax);
        account.setGmtModify(new Date());
        userService.updateAccount(account);
        JsonUtils.writeToJson("SUCCESS", response);
    }

    /**
     * 更换密码
     * 
     * @return
     */
    @RequestMapping("/changepass")
    public String changePassword() {
        //TODO 更换密码
        return "user-center-password";
    }

    /**
     * 执行更新密码
     * 
     * @param oldPass
     * @param newPass
     * @param modelMap
     * @return
     */
    @RequestMapping("/updatePass")
    public String updatePassword(@RequestParam("oldPass") String oldPass, @RequestParam("newPass") String newPass,
            ModelMap modelMap) {
        AgentsAccount account = userService.getCurrentAccount();
        if (account.getAccountPassword().equals(oldPass)) {
            boolean success = this.userService.updatePassword(account.getAgentsAccountId(), newPass);
            modelMap.put("updateSuccess", success);
        } else {
            modelMap.put("updateSuccess", false);
        }
        return "redirect:/u/changepass";
    }

    /**
     * 用户快捷菜单
     * 
     * @return
     */
    @RequestMapping("/shortcut")
    public String shortcutMenu() {
        //TODO 快捷菜单设置页
        return "user-center-shortcut-menu";
    }

    /**
     * 用户登录日志
     * 
     * @return
     */
    @RequestMapping("/log")
    public String userLog() {
        //TODO 用户登录日志
        return "user-center-log";
    }

}
