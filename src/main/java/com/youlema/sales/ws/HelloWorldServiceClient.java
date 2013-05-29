package com.youlema.sales.ws;
import javax.xml.namespace.QName;

import org.apache.cxf.jaxws.JaxWsProxyFactoryBean;


public class HelloWorldServiceClient {
    public static void main(String[] args) {

        //µ÷ÓÃWebService

        JaxWsProxyFactoryBean factory = new JaxWsProxyFactoryBean();

        factory.setServiceClass(IHelloWorldService.class);
        factory.setAddress("http://localhost:8080/helloWorld");

        IHelloWorldService service = (IHelloWorldService) factory.create();

        System.out.println("[result]" + service.sayHello("hoojo"));

    }
}
