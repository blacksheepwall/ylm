package com.youlema.sales.testws;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.youlema.sales.ws.IHelloWorldService;

import junit.framework.TestCase;

@ContextConfiguration(locations = "file:src/test/resources/applicationContext-ws.xml")
@RunWith(SpringJUnit4ClassRunner.class)
public class WsTest extends TestCase {
	@Resource
	private IHelloWorldService client;
	@Test
	public void testHello() throws Exception {
		String sayHello = client.sayHello("zhushijun");
		assertEquals(sayHello, "zhushijun say: Hello World");
	}
	
}
