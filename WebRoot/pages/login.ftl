<#-- 登录页 -->
<#assign page_name="login"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="登录">
    <@body class="login-page" nohead=true>
    <div class="container-fluid">
      <div class="modal fade in">
        <div class="modal-header">
          <h3 id="myModalLabel" class="text-center">浙江中山国际旅行社分销系统</h3>
          <h4 class="text-center">TBDS-V1.0</h4>
        </div>
        <form class="modal-body form-horizontal" action="/login/" method="post">
          <div class="control-group">
            <label class="control-label" for="username">帐号</label>
            <div class="controls">
              <input type="text" name="name" id="username">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="password">密码</label>
            <div class="controls">
              <input type="text" name="pass" id="password">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label" for="captcha">验证码</label>
            <div class="controls">
              <input type="text" id="captcha" class="span1">
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <label class="checkbox">
                <input type="checkbox">记住账户
                <a class="forgot-password" href="./get-password/">忘记密码</a>
              </label>
            </div>
          </div>
          <p class="muted text-center">建议浏览器：Internet Explorer8.0 、Google Chrome</p>
          <div class="modal-footer">
            <button id="login" class="btn btn-primary">登录</button>
            <button class="btn" data-dismiss="modal" aria-hidden="true">重置</button>
          </div>
        </form>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
