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
import com.youlema.sales.utils.Vo;

/**
 * 公告Service
 * 
 * @author user
 * 
 */
@Service
public class BulletinService {
    @Resource
    private BulletinFacade bulletinFacade;

    /**
     * 获取公告列表
     * 
     * @return
     */
    public SearchResult<Bulletin> getBulletinList() {
        BulletinFdo fdo = new BulletinFdo();
        fdo.setBulletinType("BUSINESS");
        BulletinResult result = bulletinFacade.queryPageList(fdo);
        List<BulletinFdo> bulletinFdos = result.getBulletinFdos();
        List<Bulletin> list = new ArrayList<Bulletin>();
        Vo<Bulletin> vo = new Vo<Bulletin>(Bulletin.class);
        for (BulletinFdo bulletinFdo : bulletinFdos) {
            list.add(vo.inject(bulletinFdo));
        }
        return new SearchResult<Bulletin>(list.size(), list);
    }

    /**
     * 获取系统公告
     * 
     * @return
     */
    public SearchResult<Bulletin> getSystemBulletinList() {
        BulletinFdo fdo = new BulletinFdo();
        fdo.setBulletinType("SYSTEM");
        BulletinResult result = bulletinFacade.queryPageList(fdo);
        List<BulletinFdo> bulletinFdos = result.getBulletinFdos();
        List<Bulletin> list = new ArrayList<Bulletin>();
        Vo<Bulletin> vo = new Vo<Bulletin>(Bulletin.class);
        for (BulletinFdo bulletinFdo : bulletinFdos) {
            list.add(vo.inject(bulletinFdo));
        }
        return new SearchResult<Bulletin>(list.size(), list);
    }

    /**
     * 根据ID查找公告
     * 
     * @param id
     * @return
     */
    public Bulletin getBulletinById(long id) {
        BulletinResult result = bulletinFacade.getById(id);
        BulletinFdo fdo = result.getBulletinFdo();
        if (fdo != null) {
            Vo<Bulletin> vo = new Vo<Bulletin>(Bulletin.class);
            return vo.inject(fdo);
        }
        return null;
    }

}
