<#-- 短信设置页 -->
<#assign page_name="user-center-short-message-setup"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="发送消息">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/manage/">管理中心</a> <span class="divider">/</span></li>
          <li class="active">短信设置</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@manage_sidebar></@manage_sidebar>
        <form id="J_form" class="span10 form-horizontal manage-body mod-body">
          <div class="control-group">
            <label class="control-label">序列号</label>
            <div class="controls">
              <input id="J_number" name="receiver" type="text" class="input-xlarge">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">KEY</label>
            <div class="controls">
              <textarea id="J_key" name="content"></textarea>
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button id="J_ok_btn" class="btn btn-primary">确定</button>
              <button id="J_reset_form" class="btn">重置</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
