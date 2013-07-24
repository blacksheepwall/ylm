package com.youlema.sales.ws.mock;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.DictionaryFacade;
import com.yolema.tbss.ext.facade.fdo.sys.DictionaryFdo;
import com.yolema.tbss.ext.facade.result.DictionaryResult;

@Service("MockDictionaryFacade")
public class MockDictionaryFacade implements DictionaryFacade {

    @Override
    public DictionaryResult findListByCode(String typeCode) {
        throw new UnsupportedOperationException();
    }

    @Override
    public DictionaryResult findByKey(String typeCode, String dictionaryKey) {
        DictionaryResult result = new DictionaryResult();
        DictionaryFdo fdo = new DictionaryFdo();
        fdo.setDictionaryKey(dictionaryKey);
        fdo.setDictionaryValue("测试状态code=" + typeCode + "key=" + dictionaryKey);
        result.setDictionaryFdo(fdo);
        return result;
    }

    @Override
    public String findValueByKey(String typeCode, String dictionaryKey) {
        throw new UnsupportedOperationException();
    }

    @Override
    public DictionaryResult findTopListByCode(String typeCode) {
        throw new UnsupportedOperationException();
    }

    @Override
    public DictionaryResult findParentByKey(String typeCode, String dictionaryKey) {
        throw new UnsupportedOperationException();
    }

    @Override
    public DictionaryResult findChildListByKey(String typeCode, String dictionaryKey) {
        throw new UnsupportedOperationException();
    }

}
