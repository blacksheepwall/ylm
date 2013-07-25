package com.youlema.sales.ws;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.DictionaryFacade;
import com.yolema.tbss.ext.facade.fdo.sys.DictionaryFdo;
import com.yolema.tbss.ext.facade.result.DictionaryResult;

@Service
public class DictionaryFacadeService {
    @Resource(name="DictionaryFacade")
    private DictionaryFacade dictionaryFacade;
    
    /**
     * 根据code和key查询字典信息
     * @param typeCode
     * @param dictionaryKey
     * @return
     */
    public DictionaryFdo findDic(String typeCode , String dictionaryKey){
        DictionaryResult result = dictionaryFacade.findByKey(typeCode, dictionaryKey);
        DictionaryFdo fdo = result.getDictionaryFdo();
        return fdo;
    }
}
