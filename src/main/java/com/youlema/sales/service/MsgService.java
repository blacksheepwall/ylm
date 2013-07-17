package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.MsgFacade;
import com.yolema.tbss.ext.facade.fdo.sys.MsgFdo;
import com.yolema.tbss.ext.facade.fdo.sys.MsgInboxFdo;
import com.yolema.tbss.ext.facade.result.MsgResult;
import com.youlema.sales.mapper.meta.AgentsAccount;
import com.youlema.sales.meta.MessageItem;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.meta.User;
import com.youlema.tools.jee.pages.PageList;

/**
 * 消息Service
 * 
 * @author zhushijun
 * 
 */
@Service
public class MsgService {
    @Resource
    private MsgFacade msgFacade;
    /**
     * 获取收件箱信息列表
     * @param user
     * @return
     */
    public SearchResult<MessageItem> getInboxMessageList(User user) {
        MsgInboxFdo fdo = new MsgInboxFdo();
        AgentsAccount account = user.getAccount();
        String accountLoginName = account.getAccountLoginName();
        fdo.setMsgReceivedAccount(accountLoginName);
        MsgResult msgResult = msgFacade.queryInboxMsg(fdo);
        PageList<MsgInboxFdo> pageList = msgResult.getInboxPageList();
        List<MessageItem> items = new ArrayList<MessageItem>();
        for (MsgInboxFdo msgInboxFdo : pageList) {
            MessageItem item = inboxFdo2MessageItem(msgInboxFdo);
            items.add(item);
        }
        return new SearchResult<MessageItem>(msgResult.getNum(), items);
    }
    private static MessageItem inboxFdo2MessageItem(MsgInboxFdo msgInboxFdo) {
        if(msgInboxFdo == null){
            return null;
        }
        MessageItem item = new MessageItem();
        item.setId(msgInboxFdo.getMsgId());
        item.setSender(msgInboxFdo.getMsgSender());
        item.setSendTime(msgInboxFdo.getGmtSend());
        item.setTitle(msgInboxFdo.getMsgTitle());
        item.setContent(msgInboxFdo.getMsgContent());
        item.setType(msgInboxFdo.getMsgType());
        item.setReaded(msgInboxFdo.getIsRead());
        return item;
    }
    /**
     * 获取收件信息详情
     * @param id
     * @return
     */
    public MessageItem getInboxMessage(long id) {
        MsgResult msgResult = msgFacade.getInboxMsg(id);
        MsgInboxFdo inboxFdo = msgResult.getMsgInboxFdo();
        MessageItem item = inboxFdo2MessageItem(inboxFdo);
        return item;
    }
    /**
     * 回复消息
     * @param content
     * @param user
     */
    public boolean reply(String title , String content , User user , long msgId){
        MessageItem message = getInboxMessage(msgId);
        if(message == null){
            return false;
        }
        MsgFdo fdo = new MsgFdo();
        fdo.setMsgTitle(title);
        AgentsAccount account = user.getAccount();
        //TODO 待确定
        fdo.setMsgSender(account.getAccountLoginName());
        fdo.setMsgReceiver(message.getSender());
        fdo.setMsgContent(content);
        //TODO 消息类型未知
        fdo.setMsgType("type");
        
        MsgResult msgResult = msgFacade.send(fdo);
        return msgResult.isSuccess();
    }
    
}
