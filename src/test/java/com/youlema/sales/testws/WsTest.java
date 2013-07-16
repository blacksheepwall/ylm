package com.youlema.sales.testws;

import java.util.List;

import javax.annotation.Resource;

import junit.framework.TestCase;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yolema.tbss.ext.facade.MsgFacade;
import com.yolema.tbss.ext.facade.OrderCustomFacade;
import com.yolema.tbss.ext.facade.TourProductFacade;
import com.yolema.tbss.ext.facade.fdo.TourProductFdo;
import com.yolema.tbss.ext.facade.fdo.order.OrderCustomFdo;
import com.yolema.tbss.ext.facade.fdo.sys.MsgFdo;
import com.yolema.tbss.ext.facade.fdo.sys.MsgInboxFdo;
import com.yolema.tbss.ext.facade.result.MsgResult;
import com.yolema.tbss.ext.facade.result.OrderCustomResult;
import com.yolema.tbss.ext.facade.result.TourProductResult;
import com.youlema.tools.jee.pages.PageList;

@ContextConfiguration(locations = "file:src/test/resources/applicationContext-ws.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class WsTest extends TestCase {
    @Resource
    MsgFacade facade;
	@Test
	public void testHello() throws Exception {
	    MsgResult queryInboxMsg = facade.queryInboxMsg(new MsgInboxFdo());
	    PageList<MsgInboxFdo> list = queryInboxMsg.getInboxPageList();
	    for (MsgInboxFdo msgInboxFdo : list) {
            System.out.println(msgInboxFdo.getMsgContent());
        }
	}
	
}
