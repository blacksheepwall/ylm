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
              <label class="control-label">未付款总额： ${finance.unpay}</label>
              <label class="control-label">账期内未付款：  ${finance.unpayIndays}</label>
              <label class="control-label">账期外未付款：  ${finance.unpayOutdays}</label>
            </div>
          </div>
          <div class="mod-body clearfix">
            <h5 class="mod-title">人数统计</h5>
            <div class="control-group">
              <label class="control-label">累计收客人数：${finance.totalCustCount}</label>
              <label class="control-label">本年收客人数：${finance.custCountThisYear}</label>
              <label class="control-label">往年收客人数：${finance.custCountFormerYear}</label>
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
              <#list remitResult.resultList as it>
              <tr>
                <td>
                  ${it.remitNo}
                </td>
                <td>
                  ${it.remitAmount}
                </td>
                <td>
                  ${it.remitMemo}
                </td>
                <td>
                  <#if it.remitDate??>${it.remitDate?string('yyyy-MM-dd')}</#if>
                </td>
                <td>
                  ${it.status}
                </td>
                <td>
                  <#if it.checkDate??>${it.checkDate?string('yyyy-MM-dd')}</#if>
                </td>
                <td>
                  <a href="/finance/remit/detail/?id=${it.id}">查看</a>
                </td>
              </tr>
              </#list>
              </tbody>
            </table>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
