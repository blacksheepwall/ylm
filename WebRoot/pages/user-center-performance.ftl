<#-- 业绩汇总页 -->
<#assign page_name="user-center-performance"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="业绩汇总">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">业绩汇总</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="mod-body clearfix">
            <div class="pull-left condition">
              起止日期 <input id="J_start_date" type="text" class="date-box input-small" readonly="">
              ~
              <input id="J_end_date" type="text" class="date-box input-small" readonly="">
              <button id="J_search_btn" class="btn btn-success search-btn" type="button">确定</button>
            </div>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th width="80">
                  线路类型
                </th>
                <th width="80">
                  订单数量
                </th>
                <th width="80">
                  人数
                </th>
                <th width="120">
                  营业金额额
                </th>
                <th width="120">
                  结算金额
                </th>
                <th width="100">
                  明细查看
                </th>
              </tr>
              </thead>
              <tbody>
              <#list metas as it>
              <tr>
                <td>
                  ${it.minorTypeCodeName}
                </td>
                <td>
                  ${it.orderCount}
                </td>
                <td>
                  ${it.adultCount+it.childCount}
                </td>
                <td>
                  ${it.orderAmount}
                </td>
                <td>
                  ${it.settlementAmount}
                </td>
                <td>
                  <a href="">2</a>
                </td>
              </tr>
              </#list>
              <#if metas??&&metas?size==0>
              <tr>
                <td colspan="6">还没有数据</td>
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
