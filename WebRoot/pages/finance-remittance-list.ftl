<#-- 汇款列表页 -->
<#assign page_name="finance-remittance-list"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="汇款列表">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/finance/">财务结算</a> <span class="divider">/</span></li>
          <li class="active">汇款列表</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
