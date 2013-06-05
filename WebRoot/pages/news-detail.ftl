<#-- 公告查看页 -->
<#assign page_name="news-detail"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="系统公告">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb">
          <li><a href="/main.do">首页</a> <span class="divider">/</span></li>
          <li class="active">系统公告列表</li>
        </ul>
        <div class="clearfix">
          <div class="span4 pull-left">
              <label class="control-label">公告标题：</label>
              <label class="control-label">标签：</label>
              <label class="control-label">发布人：</label>
              <label class="control-label">附件：</label>
              <label class="control-label">公告内容：</label>
          </div>
          <div class="span4 pull-left">
              <label class="control-label">有效期：</label>
              <label class="control-label">发布时间：</label>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
