<#-- 新增系统用户页 -->
<#assign page_name="manage-add-user"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="新增系统用户">
    <@body class="manage-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/manage/">管理中心</a> <span class="divider">/</span></li>
          <li class="active">新增系统用户</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@manage_sidebar></@manage_sidebar>
        <form id="J_form" class="span10 form-horizontal manage-body mod-body">
          <div class="control-group">
            <label class="control-label">登录账户</label>
            <div class="controls">
              <input type="text">
              <a href="javascript:;"><i class="icon-refresh"></i> 检查账户</a>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">系统角色</label>
            <div class="controls">
              <label class="checkbox inline">
                <input type="checkbox">系统管理
              </label>
              <label class="checkbox inline">
                <input type="checkbox">业务操作
              </label>
              <label class="checkbox inline">
                <input type="checkbox">财务结算
              </label>
              <a href=""><i class="icon-info-sign"></i> 角色说明</a>
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
