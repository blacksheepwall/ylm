package com.youlema.sales.ws.mock;

import java.util.Date;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.MsgFacade;
import com.yolema.tbss.ext.facade.fdo.sys.MsgFdo;
import com.yolema.tbss.ext.facade.fdo.sys.MsgInboxFdo;
import com.yolema.tbss.ext.facade.result.MsgResult;
import com.youlema.tools.jee.pages.PageList;

@Service
public class MockMsgFacade implements MsgFacade {

    @Override
    public MsgResult addBizMsg(String arg0, Long arg1, String arg2, String arg3) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult delete(MsgFdo arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult deleteBatchById(Long[] arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult flushAll(String arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult getBizMsgCount(Long arg0, String arg1) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult getBizMsgCountByObjectIds(String[] arg0, String arg1) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult getBizMsgCountNotSelf(Long arg0, String arg1, String arg2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult getBizMsgCountNotSelfByObjectIds(String[] arg0, String arg1, String arg2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult getById(Long arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult getInboxMsg(Long arg0) {
        MsgInboxFdo fdo = new MsgInboxFdo();
        fdo.setGmtSend(new Date());
        fdo.setMsgContent("内容内容内容内容");
        fdo.setMsgId(arg0);
        fdo.setMsgSender("发送人XXXX");
        fdo.setMsgTitle("标题一定要长！！！！！！！！");
        fdo.setMsgType("msgType");
        fdo.setIsRead(false);

        MsgResult result = new MsgResult(true);
        result.setMsgInboxFdo(fdo);
        result.setNum(1);
        return result;
    }

    @Override
    public MsgResult getOutboxMsg(MsgFdo arg0) {
        MsgResult result = new MsgResult(true);
        PageList<MsgFdo> list = new PageList<MsgFdo>();
        for (int i = 0; i < 10; i++) {
            MsgFdo fdo = new MsgFdo();
            fdo.setGmtSend(new Date());
            fdo.setMsgContent("内容内容内容内容");
            fdo.setMsgId(40000L + i);
            fdo.setMsgSender("发送人" + i);
            fdo.setMsgTitle("发送消息的标题更需要要长！！！！！！！！");
            fdo.setMsgType("msgType");
            fdo.setIsRead((i & 1) == 0);
            list.add(fdo);
        }
        result.setList(list);
        result.setNum(list.size());
        return result;
    }

    @Override
    public MsgResult getUnreadNum(String arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult listBizMsg(String arg0, Long arg1) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult listBizMsgByObjectIds(String arg0, String[] arg1) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult listDraftBox(MsgFdo arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult queryInboxMsg(MsgInboxFdo arg0) {
        MsgResult result = new MsgResult(true);
        PageList<MsgInboxFdo> list = new PageList<MsgInboxFdo>();
        for (int i = 0; i < 10; i++) {
            MsgInboxFdo fdo = new MsgInboxFdo();
            fdo.setGmtSend(new Date());
            fdo.setMsgContent("内容内容内容内容");
            fdo.setMsgId(10000L + i);
            fdo.setMsgSender("发送人" + i);
            fdo.setMsgTitle("标题一定要长！！！！！！！！");
            fdo.setMsgType("msgType");
            fdo.setIsRead((i & 1) == 0);
            list.add(fdo);
        }
        result.setInboxPageList(list);
        result.setNum(list.size());
        return result;
    }

    @Override
    public MsgResult save(MsgFdo arg0) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult send(MsgFdo arg0) {
        return new MsgResult(true);
    }

    @Override
    public MsgResult setBizMsgRead(Long[] arg0, String arg1) {
        throw new UnsupportedOperationException();
    }

    @Override
    public MsgResult update(MsgFdo arg0) {
        throw new UnsupportedOperationException();
    }

}
