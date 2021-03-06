<#-- 系统设置页 -->
<#assign page_name="manage-system-setup"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="系统设置">
    <@body class="manage-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/manage/">管理中心</a> <span class="divider">/</span></li>
          <li class="active">系统设置</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@manage_sidebar></@manage_sidebar>
        <form id="J_form" class="span10 form-horizontal mod-body">
          <fieldset>
            <div class="control-group">
              <label class="control-label"><a href=""><i class="icon-info-sign"></i> 系统设置说明</a></label>
            </div>
            <div class="control-group">
              <label class="control-label">行程单打印设置</label>
              <div class="controls">
                <!-- Inline Radios -->
                <label class="radio inline">
                  <input type="radio" value="组团社抬头及落款" name="_1" checked="checked">
                  组团社抬头及落款
                </label>
                <label class="radio inline">
                  <input type="radio" value="代理社抬头及落款" name="_1">
                  代理社抬头及落款
                </label>
              </div>
            </div>

            <div class="control-group">
              <label class="control-label">结算价格显示设置</label>

              <!-- Multiple Checkboxes -->
              <div class="controls">
                <!-- Inline Checkboxes -->
                <label class="checkbox inline">
                  <input type="checkbox" value="产品列表显示" name="_2">
                  产品列表显示
                </label>
                <label class="checkbox inline">
                  <input type="checkbox" value="产品详情页面" name="_2">
                  产品详情页面
                </label>
              </div>

            </div>

            <div class="control-group">
              <label class="control-label">合同默认设置</label>
              <div class="controls">
                <!-- Inline Radios -->
                <label class="radio inline">
                  <input type="radio" value="默认签订组团社合同" name="_3" checked="checked">
                  默认签订组团社合同
                </label>
                <label class="radio inline">
                  <input type="radio" value="默认签订代理社合同" name="_3">
                  默认签订代理社合同
                </label>
              </div>
            </div>

            <div class="control-group">
              <label class="control-label">公司LOGO</label>

              <!-- File Upload -->
              <div class="controls">
                <input class="input-file" id="J_file" type="file">
              </div>
            </div>

            <div class="control-group">
              <div class="controls">
                <button id="J_submit" class="btn btn-primary">提交</button>
                <button id="J_reset_form" class="btn">重置</button>
              </div>
            </div>

          </fieldset>
        </form>

      </div>
    </div>
    </@body>
  </@html>
</#escape>
