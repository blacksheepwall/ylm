<#-- 快捷菜单页 -->
<#assign page_name="user-center-message"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="快捷菜单">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">快捷菜单</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body mod-body">
        </div>
    </div>
    </@body>
  </@html>
</#escape>
