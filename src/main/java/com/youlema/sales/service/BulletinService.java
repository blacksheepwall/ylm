package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.BulletinFacade;
import com.yolema.tbss.ext.facade.fdo.sys.BulletinFdo;
import com.yolema.tbss.ext.facade.result.BulletinResult;
import com.youlema.sales.meta.Bulletin;
import com.youlema.sales.meta.SearchResult;
/**
 * 公告Service
 * @author user
 *
 */
@Service
public class BulletinService {
    @Resource
    private BulletinFacade bulletinFacade;
    /**
     * 获取公告列表
     * @return
     */
    public SearchResult<Bulletin> getBulletinList() {
        //TODO 公告类型需要传入一个指定的字符串，目前不知字符串具体是什么
        BulletinResult result = bulletinFacade.queryPageList(null);
        List<BulletinFdo> bulletinFdos = result.getBulletinFdos();
        List<Bulletin> list = new ArrayList<Bulletin>();
        for (BulletinFdo bulletinFdo : bulletinFdos) {
            list.add(toBulletinObject(bulletinFdo));
        }
        return new SearchResult<Bulletin>(list.size(), list);
    }
    
    /**
     * 根据ID查找公告
     * @param id
     * @return
     */
    public Bulletin getBulletinById(long id){
        BulletinResult result = bulletinFacade.getById(id);
        BulletinFdo fdo = result.getBulletinFdo();
        if(fdo != null){
            return toBulletinObject(fdo);
        }
        return null;
    }
    

    private static Bulletin toBulletinObject(BulletinFdo bulletinFdo) {
        Long id = bulletinFdo.getBulletinId();
        String title = bulletinFdo.getBulletinTitle();
        String type = bulletinFdo.getBulletinType();
        Bulletin bulletin = new Bulletin();
        bulletin.setContent(bulletinFdo.getBulletinContent());
        bulletin.setCreateDate(bulletinFdo.getGmtCreat());
        bulletin.setCreator(bulletinFdo.getCreator());
        bulletin.setId(id);
        bulletin.setLable(bulletinFdo.getBulletinLable());
        bulletin.setTitle(title);
        bulletin.setType(type);
        return bulletin;
    }
}
