package com.youlema.sales.ws.mock;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.yolema.tbss.ext.facade.AttachmentFacade;
import com.yolema.tbss.ext.facade.enums.FileType;
import com.yolema.tbss.ext.facade.fdo.sys.AttachmentFdo;
import com.yolema.tbss.ext.facade.result.AttachmentResult;
import com.yolema.tbss.ext.facade.result.BaseResult;
@Service("MockAttachmentFacade")
public class MockAttachmentFacade implements AttachmentFacade {

    @Override
    public BaseResult delete(Long businessId, String businessType) {
        throw new UnsupportedOperationException();
    }

    @Override
    public BaseResult saveRelation(Long businessId, String e, List<Long> attachmentId) {
        throw new UnsupportedOperationException();
    }

    @Override
    public BaseResult uploadFile(String filePath, String name, FileType type, String businessType, Long businessId,
            String createUser) {
        throw new UnsupportedOperationException();
    }

    @Override
    public AttachmentResult getAllFileOrImg(Long businessId, String businessType) {
        AttachmentResult attachmentResult = new AttachmentResult(true);
        attachmentResult.setAttachmentFdos(new ArrayList<AttachmentFdo>(0));
        return attachmentResult;
    }

}
