package com.youlema.sales.meta;

import java.util.Date;

import com.youlema.sales.utils.VoField;

/**
 * 公告
 * 
 * @author user
 * 
 */
public class Bulletin {
    @VoField("getBulletinId")
    private long id;
    @VoField("getBulletinTitle")
    private String title;
    @VoField("getBulletinType")
    private String type;
    @VoField("getBulletinContent")
    private String content;
    @VoField("getBulletinLable")
    private String lable;
    @VoField("getCreator")
    private String creator;
    @VoField("getGmtCreat")
    private Date createDate;
    @VoField("getGmtEffective")
    private Date effectiveDate;
    @VoField("getKeyword")
    private String tag;

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public Date getEffectiveDate() {
        return effectiveDate;
    }

    public void setEffectiveDate(Date effectiveDate) {
        this.effectiveDate = effectiveDate;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getLable() {
        return lable;
    }

    public void setLable(String lable) {
        this.lable = lable;
    }

    public String getCreator() {
        return creator;
    }

    public void setCreator(String creator) {
        this.creator = creator;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
    
}
