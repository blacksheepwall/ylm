<#-- 公告查看页 -->
<#assign page_name="news-detail"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="系统公告">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/bulletin/">系统公告列表</a> <span class="divider">/</span></li>
          <li class="active">公告查看</li>
        </ul>
        <div class="mod-body clearfix">
          <div class="row-fluid">
            <div class="span6 pull-left">
                <label class="control-label"><strong>公告标题：</strong>${bulletin.title!}</label>
                <label class="control-label"><strong>标签：</strong>${bulletin.tag!}</label>
                <label class="control-label"><strong>发布人：</strong>${bulletin.creator!}</label>
                <label class="control-label"><strong>附件：</strong></label>
            </div>
            <div class="span6 pull-left">
                <label class="control-label"><strong>有效期：</strong><#if bulletin.effectiveDate??>${bulletin.effectiveDate?string('yyyy-MM-dd HH:mm:ss')}</#if></label>
                <label class="control-label"><strong>发布时间：</strong><#if bulletin.createDate??>${bulletin.createDate?string('yyyy-MM-dd HH:mm:ss')}</#if></label>
            </div>
          </div>
          <div class="clearfix row-fluid">
            <label class="control-label">
              <strong>公告内容：</strong>
				${bulletin.content!}
            </label>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
