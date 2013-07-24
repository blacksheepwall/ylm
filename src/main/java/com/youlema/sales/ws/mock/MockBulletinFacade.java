package com.youlema.sales.ws.mock;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.yolema.tbss.ext.facade.BulletinFacade;
import com.yolema.tbss.ext.facade.fdo.sys.BulletinFdo;
import com.yolema.tbss.ext.facade.result.BulletinResult;
/**
 * 
 * @author user
 *
 */
//@Service("MockBulletinFacade")
public class MockBulletinFacade implements BulletinFacade {

    @Override
    public BulletinResult getById(Long arg0) {
        List<BulletinFdo> list = testList();
        BulletinResult result = new BulletinResult();
        for (BulletinFdo bulletinFdo : list) {
            if(bulletinFdo.getBulletinId().equals(arg0)){
                result.setSuccess(true);
                result.setBulletinFdo(bulletinFdo);
                return result;
            }
        }
        return null;
    }

    @Override
    public BulletinResult queryBulletinList(String arg0, Integer arg1) {
        return null;
    }

    @Override
    public BulletinResult queryPageList(BulletinFdo arg0) {
        BulletinResult result = new BulletinResult(true);
        
        List<BulletinFdo> list = testList();
        result.setBulletinFdos(list);
        return result;
    }

    private List<BulletinFdo> testList() {
        List<BulletinFdo> list = new ArrayList<BulletinFdo>();
        for (int i = 0; i < 10; i++) {
            BulletinFdo fdo = new BulletinFdo();
            fdo.setBulletinContent("公告内容公告内容公告内容公告内容公告内容公告内容");
            fdo.setBulletinId((long) (10000+i));
            fdo.setBulletinLable("label");
            fdo.setBulletinTitle("测试公告"+i);
            fdo.setBulletinType("type");
            fdo.setCreator("创建人");
            fdo.setGmtEffective(new Date());
            fdo.setGmtCreat(new Date());
            list.add(fdo);
        }
        return list;
    }

}
