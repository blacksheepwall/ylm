<#-- 财务结算页 -->
<#assign page_name="finance"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="财务结算">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li class="active">财务结算</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10 manage-body">
          <div class="mod-body clearfix">
            <h5 class="mod-title">应付款</h5>
            <div class="control-group">
              <label class="control-label">未付款总额： 10000.00</label>
              <label class="control-label">账期内未付款： 80000.00</label>
              <label class="control-label">账期外未付款： 20000.00</label>
            </div>
          </div>
          <div class="mod-body clearfix">
            <h5 class="mod-title">人数统计</h5>
            <div class="control-group">
              <label class="control-label">累计收客人数：4320</label>
              <label class="control-label">本年收客人数：4320</label>
              <label class="control-label">往年收客人数：4320</label>
            </div>
          </div>
          <div class="mod-body clearfix">
            <h5 class="mod-title">未核销汇款</h5>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  汇款单号
                </th>
                <th>
                  汇款金额
                </th>
                <th>
                  汇款说明
                </th>
                <th>
                  汇款日期
                </th>
                <th>
                  状态
                </th>
                <th>
                  登记日期
                </th>
                <th>
                  查看
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  1
                </td>
                <td>
                  1
                </td>
                <td>
                  1
                </td>
                <td>
                </td>
                <td>
                  1
                </td>
                <td>
                  1
                </td>
                <td>
                  1
                </td>
              </tr>
              </tbody>
            </table>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
