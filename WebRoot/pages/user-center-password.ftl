<#-- 修改密码页 -->
<#assign page_name="user-center-password"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="修改密码">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">修改密码</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <form id="J_form" class="span10 form-horizontal manage-body mod-body">
          <div class="control-group">
            <label class="control-label">原密码</label>
            <div class="controls">
              <input type="text">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">新密码</label>
            <div class="controls">
              <input type="text">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">确认密码</label>
            <div class="controls">
              <input type="text">
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button id="J_submit" class="btn btn-primary">提交</button>
              <button id="J_reset_form" class="btn">重置</button>
            </div>
          </div>
        </form>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
