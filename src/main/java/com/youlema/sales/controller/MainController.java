package com.youlema.sales.controller;

import javax.annotation.Resource;

import org.apache.shiro.SecurityUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.youlema.sales.meta.Bulletin;
import com.youlema.sales.meta.ProductItem;
import com.youlema.sales.meta.SearchResult;
import com.youlema.sales.service.AdService;
import com.youlema.sales.service.BulletinService;
import com.youlema.sales.service.ProductService;
import com.youlema.sales.service.UserService;

@Controller
@RequestMapping("/")
public class MainController {
    @Resource
    private AdService adService;
    @Resource
    private UserService userService;
    @Resource
    private ProductService productService;
    @Resource
    private BulletinService bulletinService;

    @RequestMapping(value = "/index")
    public String indexPage() {
        return "login";
    }
    /**
     * 首页
     * @param model
     * @return
     */
    @RequestMapping("/main")
    public String main(ModelMap model) {
        SearchResult<Bulletin> bulletinResult = bulletinService.getBulletinList();
        model.put("bulletinResult", bulletinResult);
        SearchResult<Bulletin> systemBulletinResult = bulletinService.getSystemBulletinList();
        model.put("systemBulletinResult", systemBulletinResult);
        SearchResult<ProductItem> hotProducts = productService.listHotProduct();
        SearchResult<ProductItem> specialPdts = productService.listSpecialOfferProduct();
        SearchResult<ProductItem> endPdts = productService.listEndProduct();
        model.put("hotPdts", hotProducts);
        model.put("specialPdts", specialPdts);
        model.put("endPdts", endPdts);
        return "main";
    }

    @RequestMapping("/main/{pageName}")
    public String view(@PathVariable("pageName") String path) {
        return path;
    }

    @RequestMapping("/help")
    public String help(){
        return "help";
    }
    
    @RequestMapping("/logout")
    public String logout() {
        SecurityUtils.getSubject().logout();
        return "redirect:/index/";
    }
}
