<#-- 找回密码页 -->
<#assign page_name="get-password"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="登录">
    <@body class="login-page" nohead=true>
    <div class="container-fluid">
      <div class="modal fade in">
        <div class="modal-header">
          <h3 id="myModalLabel" class="text-center">找回密码</h3>
        </div>
        <div class="modal-body form-horizontal">
          <h5 class="text-center">第一步：请输入登录账号及手机号码，获取验证码：</h5>
          <div class="control-group">
            <label class="control-label" for="username">帐号</label>
            <div class="controls">
              <input type="text" id="username">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="password">手机号码</label>
            <div class="controls">
              <input type="text" id="password">
              <a class="send-captha" href="">发送验证码</a>
            </div>
          </div>
          <h5 class="text-center">第二步：请输入收到的6位验证码：</h5>
          <p class="muted text-center">如果您没有收到验证码，请拨打服务热线4008268100</p>
          <div class="control-group">
            <label class="control-label" for="captcha">验证码</label>
            <div class="controls">
              <input type="text" id="captcha" class="span1">
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <button class="btn btn-primary">提交</button>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
