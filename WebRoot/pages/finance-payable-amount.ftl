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
              <tr>
                <td colspan="5">
                  <div>
                  出境线路 <a href="javascript:;" class="j-toggle">展开</a>
                  </div>
                  <ol class="item-list" style="display: none;">
                    <li>
                      <div class="item-type">上海</div>
                      <div class="item-price">100</div>
                      <div class="item-price">100</div>
                      <div class="item-total">100</div>
                      <div class="item-detail"><a href="/main/finance-payable-detail/">查看</a></div>
                    </li>
                  </ol>
                </td>
              </tr>
              <tr>
                <td colspan="5">
                  <div>
                  港澳台线路 <a href="javascript:;" class="j-toggle">展开</a>
                  </div>
                  <ol class="item-list" style="display: none;">
                    <li>
                      <div class="item-type">上海</div>
                      <div class="item-price">100</div>
                      <div class="item-price">100</div>
                      <div class="item-total">100</div>
                      <div class="item-detail"><a href="/main/finance-payable-detail/">查看</a></div>
                    </li>
                  </ol>
                </td>
              </tr>
              <tr>
                <td colspan="5">
                  <div>
                  国内线路 <a href="javascript:;" class="j-toggle">展开</a>
                  </div>
                  <ol class="item-list" style="display: none;">
                    <li>
                      <div class="item-type">上海</div>
                      <div class="item-price">100</div>
                      <div class="item-price">100</div>
                      <div class="item-total">100</div>
                      <div class="item-detail"><a href="/main/finance-payable-detail/">查看</a></div>
                    </li>
                  </ol>
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
