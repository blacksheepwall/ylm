package com.youlema.sales.controller;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/err")
public class ErrorController {
    /**
     * 404页面
     * 
     * @param response
     * @return
     */
    @RequestMapping("/404")
    public String err404(HttpServletResponse response) {
        response.setStatus(404);
        return "common/404";
    }

    /**
     * 403页面
     * 
     * @param response
     * @return
     */
    @RequestMapping("/403")
    public String err403(HttpServletResponse response) {
        response.setStatus(403);
        return "common/403";
    }

    /**
     * 500页面
     * 
     * @param response
     * @return
     */
    @RequestMapping("/500")
    public String err500(HttpServletResponse response) {
        response.setStatus(500);
        return "common/500";
    }

    public static String redirect404() {
        return "redirect:/err/404";
    }

    public static String redirect403() {
        return "redirect:/err/403";
    }

}
