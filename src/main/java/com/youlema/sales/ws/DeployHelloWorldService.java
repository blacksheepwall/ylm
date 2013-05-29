package com.youlema.sales.ws;

import javax.xml.ws.Endpoint;



public class DeployHelloWorldService {
	/**
	 * <b>function:</b>����WebService
	 * @author hoojo
	 */
	public static void deployService() {
		System.out.println("Server start ����");
		HelloWorldWebService service = new HelloWorldWebService();
		String address = "http://localhost:8080/helloWorld";
		Endpoint.publish(address, service);
	}
	
	public static void main(String[] args) throws InterruptedException {
		//����WebService
		deployService();
		System.out.println("server ready ����");
		Thread.sleep(10000 * 60);
		System.out.println("server exiting");
		//����60�����˳�
		System.exit(0);
	}
}
