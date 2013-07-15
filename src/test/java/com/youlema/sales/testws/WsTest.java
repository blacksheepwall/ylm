package com.youlema.sales.testws;

import java.util.Set;

import javax.annotation.Resource;

import junit.framework.TestCase;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yolema.tbss.ext.facade.BulletinFacade;
import com.yolema.tbss.ext.facade.DictionaryFacade;
import com.yolema.tbss.ext.facade.fdo.sys.DictionaryFdo;
import com.yolema.tbss.ext.facade.result.BulletinResult;
import com.yolema.tbss.ext.facade.result.DictionaryResult;

@ContextConfiguration(locations = "file:src/test/resources/applicationContext-ws.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class WsTest extends TestCase {
    @Resource
    BulletinFacade facade;
	@Test
	public void testHello() throws Exception {

        BulletinResult bulletinList = facade.queryBulletinList("BUSINESS", 100);

        BulletinResult sysList = facade.queryBulletinList("SYSTEM", 100);
	}
	
}
