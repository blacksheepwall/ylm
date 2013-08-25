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
              <span><strong>线路类型</strong>：国内线路-海南三亚</span>
              <span>
                <strong>周期</strong>：
                <#if type=="year">
                  2013年
                <#else>
                  2013年6月
                </#if></span>
              <button class="btn btn-small btn-success" type="button"><i class="icon-download"></i> 下载明细</button>
            </div>
            <table class="tree-view table table-bordered">
              <thead>
              <tr>
                <th>
                  订单编号
                </th>
                <th>
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
              <tr>
                <td>
                  <a href="javascript:;">YSL1305170948049</a>
                </td>
                <td>
                  <a href="">昆大丽双飞6日游</a>
                </td>
                <td>
                  2013-03-11
                </td>
                <td>
                  3
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
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
