<#-- 个人设置页 -->
<#assign page_name="user-center-setup"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="个人设置">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/user-center/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">个人设置</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 form-horizontal manage-body mod-body">
          <div class="control-group">
            <label class="control-label">系统账户</label>
            <div class="controls">
              <input type="text" value="yubh" readonly="">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">系统角色</label>
            <div class="controls">
              <input type="text" value="业务操作" readonly="">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">姓名</label>
            <div class="controls">
              <input type="text">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">性别</label>
            <div class="controls">
              <label class="radio inline">
                <input type="radio" name="optionsRadios" checked>男
              </label>
              <label class="radio inline">
                <input type="radio" name="optionsRadios">女
              </label>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">所在部门</label>
            <div class="controls">
              <input type="text">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">联系电话</label>
            <div class="controls">
              <input type="text">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">手机号码</label>
            <div class="controls">
              <input type="text">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">电子邮箱</label>
            <div class="controls">
              <input type="text">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">QQ号码</label>
            <div class="controls">
              <input type="text">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">传真</label>
            <div class="controls">
              <input type="text">
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button id="login" class="btn btn-primary">提交</button>
              <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
