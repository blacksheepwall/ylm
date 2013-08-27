<#-- 应付款统计页 -->
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
          <li class="active">应付款统计</li>
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
                <th width="130">
                  线路类型
                </th>
                <th width="130">
                  账期内
                </th>
                <th width="130">
                  账期外
                </th>
                <th width="140">
                  小计
                </th>
                <th>
                  明细查看
                </th>
              </tr>
              </thead>
              <tbody>
              <#if statistic2??>
              <tr>
                <td colspan="5">
                  <div>
                  出境线路 <a href="javascript:;" class="j-toggle">展开</a>
                  </div>
                  <ol class="item-list" style="display: none;">
                  	<#list statistic2.getItems() as it>
                    <li>
                      <div class="item-type">${it.minorType!'UNKNOW'}</div>
                      <div class="item-price">${it.inPaymentDaysAmount}</div>
                      <div class="item-price">${it.outPaymentDaysAmount}</div>
                      <div class="item-total">${it.totalAmount}</div>
                      <div class="item-detail"><a href="/finance/payment/detail/?mainTypeCode=${it.mainTypeCode}&minorTypeCode=${it.minorTypeCode}">查看</a></div>
                    </li>
                    </#list>
                  </ol>
                </td>
              </tr>
              </#if>
              <#if statistic3??>
              <tr>
                <td colspan="5">
                  <div>
                  港澳台线路 <a href="javascript:;" class="j-toggle">展开</a>
                  </div>
                  <ol class="item-list" style="display: none;">
                  	<#list statistic3.getItems() as it>
                    <li>
                      <div class="item-type">${it.minorType!}</div>
                      <div class="item-price">${it.inPaymentDaysAmount}</div>
                      <div class="item-price">${it.outPaymentDaysAmount}</div>
                      <div class="item-total">${it.totalAmount}</div>
                      <div class="item-detail"><a href="/finance/payment/detail/?mainTypeCode=${it.mainTypeCode}&minorTypeCode=${it.minorTypeCode}">查看</a></div>
                    </li>
                    </#list>
                  </ol>
                </td>
              </tr>
              </#if>
              <#if statistic1??>
              <tr>
                <td colspan="5">
                  <div>
                  国内线路 <a href="javascript:;" class="j-toggle">展开</a>
                  </div>
                  <ol class="item-list" style="display: none;">
                  	<#list statistic1.getItems() as it>
                    <li>
                      <div class="item-type">${it.minorType!}</div>
                      <div class="item-price">${it.inPaymentDaysAmount}</div>
                      <div class="item-price">${it.outPaymentDaysAmount}</div>
                      <div class="item-total">${it.totalAmount}</div>
                      <div class="item-detail"><a href="/finance/payment/detail/?mainTypeCode=${it.mainTypeCode}&minorTypeCode=${it.minorTypeCode}">查看</a></div>
                    </li>
                    </#list>
                  </ol>
                </td>
              </tr>
              </#if>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
