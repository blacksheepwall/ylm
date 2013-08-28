package com.youlema.sales.service;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.AttachmentFacade;
import com.yolema.tbss.ext.facade.BulletinFacade;
import com.yolema.tbss.ext.facade.fdo.sys.AttachmentFdo;
import com.yolema.tbss.ext.facade.fdo.sys.BulletinFdo;
import com.yolema.tbss.ext.facade.result.AttachmentResult;
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
    @Resource(name="BulletinFacade")
    private BulletinFacade bulletinFacade;
    @Resource
    private AttachmentFacade attachmentFacade; 

    /**
     * 获取公告列表
     * 
     * @return
     */
    public SearchResult<Bulletin> getBulletinList() {
        BulletinResult result =  bulletinFacade.queryBulletinList("business_Bulletin", 10);
        List<BulletinFdo> bulletinFdos = result.getBulletinFdos();
        List<Bulletin> list = new ArrayList<Bulletin>();
        Vo<Bulletin> vo = new Vo<Bulletin>(Bulletin.class);
        for (BulletinFdo bulletinFdo : bulletinFdos) {
            Bulletin inject = vo.inject(bulletinFdo);
            list.add(inject);
            AttachmentResult img = attachmentFacade.getAllFileOrImg(bulletinFdo.getBulletinId(), bulletinFdo.getBulletinType());
            if(img != null){
                List<AttachmentFdo> attachmentFdos = img.getAttachmentFdos();
                if(attachmentFdos.size()>0){
                    AttachmentFdo attachmentFdo = attachmentFdos.get(0);
                    inject.setAttachName(attachmentFdo.getName());
                    inject.setAttachPath(attachmentFdo.getPath());
                }
            }
        }
        return new SearchResult<Bulletin>(list.size(), list);
    }

    /**
     * 获取系统公告
     * 
     * @return
     */
    public SearchResult<Bulletin> getSystemBulletinList() {
        BulletinResult result =  bulletinFacade.queryBulletinList("system_Bulletin", 10);
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
