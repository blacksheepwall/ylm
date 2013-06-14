<#-- 发送消息页 -->
<#assign page_name="user-center-send-message"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="发送消息">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/manage/">管理中心</a> <span class="divider">/</span></li>
          <li class="active">发送消息</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 form-horizontal manage-body">
          <div class="control-group">
            <label class="control-label">接收人</label>
            <div class="controls">
              <input type="text" class="input-xlarge">
              <a href="javascript:;">选择接收人</a>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">消息标题</label>
            <div class="controls">
              <input type="text" class="input-xlarge">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">消息内容</label>
            <div class="controls">
              <textarea></textarea>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">附件</label>
            <div class="controls">
              <a href="javascript:;">上传附件</a>
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button id="login" class="btn btn-primary">发送</button>
              <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
