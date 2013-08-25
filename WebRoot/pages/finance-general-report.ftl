<#-- 总报表页 -->
<#assign page_name="finance-general-report"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="总报表">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/finance/">财务结算</a> <span class="divider">/</span></li>
          <li class="active">总报表</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="mod-body">
            <button class="btn btn-success">下载报表</button>
            <table class="table table-bordered">
              <thead>
              <tr>
                <th>
                </th>
                <th>
                  订单数
                </th>
                <th>
                  人数
                </th>
                <th>
                  订单金额
                </th>
                <th>
                  结算金额
                </th>
                <th>
                  查看
                </th>
              </tr>
              </thead>
              <tbody>
              <#list list as it>
              <tr>
                <td class="year">
                  ${it.yearOfStart}
                </td>
                <td>
                ${it.orders}
                </td>
                <td>
                ${it.numberOfPeople}
                </td>
                <td>
                ${it.orderAmount}
                </td>
                <td>
                ${it.settlementAmount}
                </td>
                <td>
                  <a href="/main/finance-report?type=year">查看</a>
                </td>
              </tr>
              </#list>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
