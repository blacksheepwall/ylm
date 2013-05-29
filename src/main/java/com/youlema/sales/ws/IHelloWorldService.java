package com.youlema.sales.ws;
import javax.jws.WebParam;
import javax.jws.WebService;

@WebService
public interface IHelloWorldService {
	String sayHello(@WebParam(name = "name") String name);
}
