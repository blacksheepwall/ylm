<#-- 应付款明细页 -->
<#assign page_name="finance-payable-amount"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="应付款明细">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/finance/">财务结算</a> <span class="divider">/</span></li>
          <li class="active">应付款明细</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="mod-body clearfix">
            <h5 class="mod-title">应付款统计</h5>
            <table id="J_table" class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  线路类型
                </th>
                <th>
                  账期内
                </th>
                <th>
                  账期外
                </th>
                <th>
                  小计
                </th>
                <th>
                  明细查看
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  出境线路 <i class="pull-right icon-plus expand"> 展开下级</i>
                </td>
                <td>
                  2
                </td>
                <td>
                  3
                </td>
                <td>
                  4
                </td>
                <td>
                  查看
                </td>
              </tr>
              <tr>
                <td>
                  港澳台线路 <i class="pull-right icon-minus expand"> 收起下级</i>
                </td>
                <td>
                  2
                </td>
                <td>
                  3
                </td>
                <td>
                  4
                </td>
                <td>
                  查看
                </td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
