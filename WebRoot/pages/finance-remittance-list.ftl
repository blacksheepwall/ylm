<#-- 汇款列表页 -->
<#assign page_name="finance-remittance-list"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="汇款列表">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/finance/">财务结算</a> <span class="divider">/</span></li>
          <li class="active">汇款列表</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="form-horizontal mod-body">
            <div class="condition">
              <strong>汇款日期：</strong>
              <input type="text" id="J_start_date" class="date-box input-small" readonly="">
              ~
              <input type="text" id="J_end_date" class="date-box input-small" readonly="">
            </div>
            <div class="condition">
              <strong>汇款单号：</strong><input id="J_ticket_no" type="text" class="input-small">
              <strong>状态：</strong>
              <select id="J_status" class="input-small">
                <option value="">所有</option>
                <option value="1">打开</option>
                <option value="2">认领中</option>
                <option value="5">已认领</option>
                <option value="6">作废</option>
              </select>
            </div>
            <div class="condition">
              <button id="J_search_btn" class="btn btn-success search-btn" type="button"><i class="icon-search"></i> 查找</button>
            </div>
          </div>
          <div class="mod-body">
            <h4 class="mod-title">汇款列表</h4>
            <table class="table table-bordered">
              <thead>
              <tr>
                <th width="170">
                  汇款单号
                </th>
                <th>
                  金额
                </th>
                <th>
                  汇款日期
                </th>
                <th>
                  登记日期
                </th>
                <th>
                  状态
                </th>
                <th>
                  操作
                </th>
              </tr>
              </thead>
              <tbody id="J_remittance_list"></tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    <script id="J_remittance_item_tpl" type="text/tpl">
      {{#each this}}
      <tr>
        <td>
          <a href="/finance/remit/detail?id={{id}}" target="_blank">{{remitNo}}</a>
        </td>
        <td>
          {{remitAmount}}
        </td>
        <td>
          {{dateRenderer remitDate}}
        </td>
        <td>
          {{dateRenderer checkDate}}
        </td>
        <td>
          {{statusRenderer status}}
        </td>
        <td>
          <a href="/main/finance-add-remittance/">修改</a>&nbsp;<a class="j-remove" href="javascript:;">删除</a>
        </td>
      </tr>
      {{/each}}
      {{^each this}}
      <tr>
        <td colspan="6">没有数据</td>
      </tr>
      {{/each}}
    </script>
    </@body>
  </@html>
</#escape>
