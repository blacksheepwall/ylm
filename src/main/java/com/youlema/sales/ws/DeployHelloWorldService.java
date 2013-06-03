package com.youlema.sales.ws;

import javax.xml.ws.Endpoint;



public class DeployHelloWorldService {
	/**
	 * <b>function:</b>发布WebService
	 * @author hoojo
	 */
	public static void deployService() {
		System.out.println("Server start ……");
		HelloWorldWebService service = new HelloWorldWebService();
		String address = "http://localhost:8080/helloWorld";
		Endpoint.publish(address, service);
	}
	
	public static void main(String[] args) throws InterruptedException {
		//发布WebService
		deployService();
		System.out.println("server ready ……");
		Thread.sleep(10000 * 60);
		System.out.println("server exiting");
		//休眠60秒后就退出
		System.exit(0);
	}
}
