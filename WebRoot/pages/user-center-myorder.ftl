<#-- 我的订单页 -->
<#assign page_name="user-center-myorder"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="我的订单">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">我的订单</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="mod-body clearfix">
            <form class="form-search">
              <input id="J_name" class="search-input" type="text">
              <button id="J_search_btn" class="btn btn-success search-btn" type="button">查找</button>
            </form>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th width="80">
                  订单编号
                </th>
                <th width="50">
                  类型
                </th>
                <th>
                  产品名称
                </th>
                <th width="90">
                  出团日期
                </th>
                <th width="60">
                  人数
                </th>
                <th width="60">
                  联系人
                </th>
                <th width="90">
                  预订时间
                </th>
                <th width="80">
                  订单状态
                </th>
              </tr>
              </thead>
              <tbody>
              <#list orderResult.resultList as it>
              <tr>
                <td>
                  ${it.orderNumber}
                </td>
                <td>
                  ${it.orderType.value}
                </td>
                <td>
                  ${it.productName}
                </td>
                <td>
                  <#if it.beginDate??>${it.beginDate?string('yyyy-MM-dd')}</#if>
                </td>
                <td>
                  ${it.travellerCount}
                </td>
                <td>
                  ${it.contact}
                </td>
                <td>
                  <#if it.scheduledTime??>${it.scheduledTime?string('yyyy-MM-dd')}</#if>
                </td>
                <td>
                  ${it.status.value}
                </td>
              </tr>
              </#list>
                <#if orderResult.resultList?size==0>
                <tr>
                  <td colspan="8">还没有数据</td>
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
