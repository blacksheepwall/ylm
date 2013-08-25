<#-- 汇款查看页 -->
<#assign page_name="finance-remittance"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="汇款查看">
    <@body class="finance-center">
    <link rel="stylesheet" type="text/css" href="/js/base/jquery.jqGrid/css/ui.jqgrid.css" />
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/finance/">财务结算</a> <span class="divider">/</span></li>
          <li><a href="/main/finance-remittance-list/">汇款列表</a> <span class="divider">/</span></li>
          <li class="active">汇款查看</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="mod-body">
            <h5 class="mod-title">汇款信息</h5>
            <ul class="remittance-info clearfix">
              <li><strong>汇款单号：</strong> ${(result.remittanceFormCode)!}</li>
              <li><strong>汇款日期：</strong> <#if (result.gmtRemittance)??>${result.gmtRemittance?string('yyyy-MM-dd')}</#if></li>
              <li><strong>汇款金额：</strong> ${(result.moneyOfRemittance)!}</li>
              <li><strong>汇款账号：</strong> ${(result.payeeAccount)!}</li>
              <li><strong>开户行：</strong> ${(result.payeeBank)!}</li>
              <li><strong>账户名称：</strong> ${(result.payeeName)!}</li>
              <li><strong>汇款说明：</strong> ${(result.memo)!}</li>
              <li><strong>登记人：</strong> ${(result.creator)!}</li>
              <li><strong>登记时间：</strong>  <#if (result.gmtCreate)??>${(result.gmtCreate)?string('yyyy-MM-dd')}</#if></li>
              <li><strong>状态：</strong>${(result.remittanceStatus)!}</li>
              <li><strong>附件：</strong> 1、汇款单回单附件</li>
            </ul>
          </div>
          <div class="mod-body">
            <h5 class="mod-title">付款内容</h5>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  收款单号
                </th>
                <th>
                  订单编号
                </th>
                <th>
                  产品名称
                </th>
                <th>
                  出团日期
                </th>
                <th>
                  人数
                </th>
                <th>
                  核销状态
                </th>
                <th>
                  本次付款
                </th>
              </tr>
              </thead>
              <tbody>
              <#list billFdos as it>
              <tr>
                <td>
                  <a href="/main/finance-verification"> ${(result.remittanceFormCode)!}</a>
                </td>
                <td>
                  <a href="/order/info/?id=${orderBillId!-1}" target="_blank">${it.bizOrderId!}</a>
                </td>
                <td>
                  ${it.lineName!}
                </td>
                <td>
                  <#if it.gmtDayOfStart??>${it.gmtDayOfStart?string('yyyy-MM-dd')}</#if>
                </td>
                <td>
                  ${it.numberOfAdults!0}大${it.numberOfChildren!0}小
                </td>
                <td>
                  ${it.paymentAmount!}
                </td>
                <td>
                  ${it.billStatus!}
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
