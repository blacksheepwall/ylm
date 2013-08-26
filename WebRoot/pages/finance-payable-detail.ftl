<#-- 应付款明细页 -->
<#assign page_name="finance-payable-detail"/>
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
          <div class="form-horizontal mod-body">
            <div class="control-group">
              <strong>线路类型：</strong>
              <select class="input-small">
                <option value="CJ">出境线路</option>
                <option value="GT">港澳台线路</option>
                <option value="GN">国内线路</option>
              </select>
              <select class="input-small">
              	<#list types as it>
                <option selected="" value="${it.typeCode!}">${it.productTypeName}</option>
                </#list>
              </select>
              <button class="btn btn-success btn-small">下载明细</button>
            </div>
            <table class="table table-bordered">
              <thead>
              <tr>
                <th width="130">
                  订单编号
                </th>
                <th width="50">
                  人数
                </th>
                <th width="210">
                  产品信息
                </th>
                <th>
                  出发日期
                </th>
                <th>
                  订单金额
                </th>
                <th>
                  已付款
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
              <#list list as it>
              <tr>
                <td>
                  <a href="/order/info/?id=${it.orderBillId}" target="_blank">${it.orderCode}</a>
                </td>
                <td>
                  ${it.totalAdult}大${it.totalChild}小
                </td>
                <td>
                  <a href="/product/detail?id=${it.productId}" target="_blank">${it.productName}</a>
                </td>
                <td>
                  <#if it.gmtDayOfStart??>${it.gmtDayOfStart?string('yyyy-MM-dd')}</#if>
                </td>
                <td>
                  ${it.orderAmount}
                </td>
                <td>
                  ${it.paidAmount}
                </td>
                <td>
                  ${it.unpaidAmount}
                </td>
                <td>
                  ${it.paymentDays}天
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
