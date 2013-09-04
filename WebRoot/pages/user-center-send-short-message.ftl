<#-- 发送短信页 -->
<#assign page_name="user-center-send-short-message"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="发送消息">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/manage/">管理中心</a> <span class="divider">/</span></li>
          <li class="active">发送短信</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@manage_sidebar></@manage_sidebar>
        <form id="J_form" class="span10 form-horizontal manage-body mod-body">
          <div class="control-group">
            <label class="control-label">发送号码</label>
            <div class="controls">
              <input id="J_number" name="receiver" type="text" class="input-xlarge">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">短信内容</label>
            <div class="controls">
              <textarea id="J_content" name="content"></textarea>
              <p style="padding-top:4px;">短信内容不能超过70个中文，包括标点符号，落款内容。</p>
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button id="J_ok_btn" class="btn btn-primary">发送</button>
              <button id="J_reset_form" class="btn">重置</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
