package com.youlema.sales.ws;


import javax.jws.WebParam;
import javax.jws.WebService;
import javax.jws.soap.SOAPBinding;
import javax.jws.soap.SOAPBinding.Style;

@WebService
@SOAPBinding(style = Style.RPC)
public class HelloWorldWebService {
    public String sayHello(@WebParam(name = "name") String name) {

        return name + " say: Hello World";

    }
}
