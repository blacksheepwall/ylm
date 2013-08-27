<#-- 报表明细页 -->
<#assign page_name="finance-report-detail"/>
<#include "common/module.ftl"/>
<#assign type="${type!'year'}">
<#escape x as x?html>
  <@html title="报表明细">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/finance/">财务结算</a> <span class="divider">/</span></li>
          <li class="active">报表明细</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="mod-body">
            <div class="condition form-horizontal">
              <span><strong>线路类型</strong>：${mainType}-${minorType!}</span>
              <span>
                <strong>周期</strong>：
                <#if month <= 0>
                  ${year}年
                <#else>
                 ${year}年${month}月
                </#if></span>
              <button class="btn btn-small" type="button"><i class="icon-download"></i> 下载明细</button>
            </div>
            <table class="tree-view table table-bordered">
              <thead>
              <tr>
                <th width="150">
                  订单编号
                </th>
                <th width="200">
                  产品信息
                </th>
                <th>
                  出发日期
                </th>
                <th>
                  人数
                </th>
                <th>
                  预订金额
                </th>
                <th>
                  结算金额
                </th>
                <th>
                  未付余款
                </th>
                <th>
                  账期
                </th>
              </tr>
              </thead>
              <tbody>
              <#list items as it>
              <tr>
                <td>
                  <a href="/order/info/?id=${it.orderBillId}"  target="_blank">${it.orderCode}</a>
                </td>
                <td>
                  <a href="/product/detail?id=${it.productId}" target="_blank">${it.productName}</a>
                </td>
                <td>
                  <#if it.gmtDayOfStart??>${it.gmtDayOfStart?string('yyyy-MM-dd')}</#if>
                </td>
                <td>
                  ${it.totalAdult + it.totalChild}
                </td>
                <td>
                	${it.orderAmount}
                </td>
                <td>
                	${it.settlementAmount}
                </td>
                <td>
                	${it.unpaidAmount}
                </td>
                <td>
                	${it.paymentDays}
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
