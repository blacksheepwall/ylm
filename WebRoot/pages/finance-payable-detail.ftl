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
                <option value="出境线路">出境线路</option>
                <option value="港澳台线路">港澳台线路</option>
                <option value="国内线路">国内线路</option>
              </select>
              <select class="input-small">
                <option selected="" value="东南亚">东南亚</option>
                <option value="东南亚">东南亚</option>
                <option value="东南亚">东南亚</option>
                <option value="东南亚">东南亚</option>
                <option value="东南亚">东南亚</option>
                <option value="东南亚">东南亚</option>
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
              <tr>
                <td>
                  <a href="/order/info/?id=12345678" target="_blank">YSL13042410560353</a>
                </td>
                <td>
                  3大1小
                </td>
                <td>
                  <a href="/product/detail?id=1" target="_blank">东航直飞巴厘岛5晚6日至尊逍遥之旅</a>
                </td>
                <td>
                  2013-03-11
                </td>
                <td>
                  1596.00
                </td>
                <td>
                  1596.00
                </td>
                <td>
                  1596.00
                </td>
                <td>
                  23天
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
