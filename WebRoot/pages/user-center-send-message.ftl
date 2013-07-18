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
          <li><a href="/manage/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">发送消息</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <form id="J_form" class="span10 form-horizontal manage-body mod-body">
          <div class="control-group">
            <label class="control-label">接收人</label>
            <div class="controls">
              <input id="J_receiver" name="receiver" type="text" class="input-xlarge">
              <a href="javascript:;"><i class="icon-user"></i> 选择接收人</a>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">消息标题</label>
            <div class="controls">
              <input id="J_title" name="title" type="text" class="input-xlarge">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">消息内容</label>
            <div class="controls">
              <textarea id="J_content" name="content"></textarea>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">附件</label>
            <div class="controls">
              <input type="file" name="attachment">
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button id="J_send" class="btn btn-primary">发送</button>
              <button id="J_reset_form" class="btn">重置</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
