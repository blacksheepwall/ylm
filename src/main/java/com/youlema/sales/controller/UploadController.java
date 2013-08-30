package com.youlema.sales.controller;

import java.io.File;
import java.util.concurrent.atomic.AtomicLong;

import javax.annotation.Resource;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.ServletContextAware;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.yolema.tbss.ext.facade.AttachmentFacade;
import com.yolema.tbss.ext.facade.enums.FileType;
import com.youlema.sales.service.UserService;

@Controller
@RequestMapping("/upload")
public class UploadController implements ServletContextAware {

    private AtomicLong key = new AtomicLong(1000);
    @Resource
    private AttachmentFacade attachmentFacade;
    @Resource
    private UserService userService;

    @Value("#{configProperties['file.path']}")
    private String savePath;

    @Override
    public void setServletContext(ServletContext servletContext) {
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    public String handleFormUpload(@RequestParam("name") String name, String bussinessType, long bussinessId,
            @RequestParam("file") CommonsMultipartFile mFile) {
        if (!mFile.isEmpty()) {
            File dir = new File(savePath);
            if (!dir.exists()) {
                dir.mkdirs();
            }
            String filename = mFile.getOriginalFilename();
            File file = new File(dir, System.currentTimeMillis() + key.addAndGet(1) + ".jpg"); // 新建一个文件
            try {
                mFile.getFileItem().write(file);
            } catch (Exception e) {
                // TODO 异常时返回异常消息
            }

            attachmentFacade.uploadFile(file.getAbsolutePath(), filename, FileType.FILE, bussinessType, bussinessId,
                    userService.getCurrentAccount().getAccountLoginName());

            return "redirect:uploadSuccess"; // 返回成功视图
        } else {
            return "redirect:uploadFailure"; // 返回失败视图
        }
    }
}
