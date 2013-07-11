package com.youlema.sales.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.BulletinFacade;
import com.yolema.tbss.ext.facade.fdo.sys.BulletinFdo;
import com.yolema.tbss.ext.facade.result.BulletinResult;

@Service
public class BulletinService {
    BulletinFacade bulletinFacade;
    
    public void aaa(){
        BulletinResult result = bulletinFacade.queryPageList(null);
        List<BulletinFdo> bulletinFdos = result.getBulletinFdos();
         
    }
}
