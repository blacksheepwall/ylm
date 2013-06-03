package com.youlema.sales.controller;

import java.io.IOException;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/order")
public class OrderController {
    @RequestMapping("info")
    public String orderInfo(@RequestParam("id") long orderId) {
        return "news";
    }

    @RequestMapping("download")
    public void downloadNote(@RequestParam("id") long orderId, HttpServletResponse response) throws IOException {
        response.setContentType("APPLICATION/msword");
        String fileName = new String(("出团通知_" + orderId + ".doc").getBytes("utf-8"),"iso-8859-1");
        response.setHeader("Content-Disposition", "attachment;   filename=" + fileName);
        ServletOutputStream outputStream = response.getOutputStream();
        response.getOutputStream().flush();
        response.getWriter().flush();
        outputStream.close();
    }

}
