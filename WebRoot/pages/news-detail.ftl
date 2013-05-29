<#-- 公告查看页 -->
<#assign page_name="main"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="系统公告">
    <@body class="main-page">
    <div class="container-fluid">
      <div class="row-fluid">
        <ul class="breadcrumb">
          <li><a href="/main.do">首页</a> <span class="divider">/</span></li>
          <li class="active">系统公告列表</li>
        </ul>
        <div class="form-horizontal clearfix">
          <div class="span4 pull-left">
            <div class="control-group">
              <label class="control-label">公告标题：</label>
            </div>
            <div class="control-group">
              <label class="control-label">标签：</label>
            </div>
            <div class="control-group">
              <label class="control-label">发布人：</label>
            </div>
            <div class="control-group">
              <label class="control-label">附件：</label>
            </div>
          </div>
          <div class="span4 pull-left">
            <div class="control-group">
              <label class="control-label">有效期：</label>
            </div>
            <div class="control-group">
              <label class="control-label">发布时间：</label>
            </div>
          </div>
        </div>
        <div class="form-horizontal">
          <div class="control-group">
            <label class="control-label">公告内容：</label>
          </div>
        </div>
      </div>
    </@body>
  </@html>
</#escape>
