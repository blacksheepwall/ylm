<#-- 订单管理页 -->
<#assign page_name="order-manage"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="订单管理">
    <@body class="manage-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li class="active">订单管理</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div class="condition">
          <form class="form-horizontal mod-body">
            <div class="control-group search-box">
              <strong>预定日期：</strong>
              <input id="J_start_date" class="date-box" type="text" readonly>
              <strong>至</strong>
              <input id="J_end_date" class="date-box" type="text" readonly>
              <input class="search-input" type="text"> <button class="btn btn-success search-btn" type="button"><i class="icon-search"></i> 搜索</button>
            </div>
            <div>
              <div class="con-row">
                <strong>订单状态</strong>：
                <span class="item label label-info">不限</span>
                <span class="item">待确认</span>
                <span class="item">候补</span>
                <span class="item">已确认</span>
                <span class="item">已取消</span>
              </div>
              <div class="con-row">
                <strong>合同状态</strong>：
                <span class="item label label-info">不限</span>
                <span class="item">组团已寄</span>
                <span class="item">代理已签收</span>
                <span class="item">客户已签订</span>
                <span class="item">代理已回寄</span>
                <span class="item">组团已签收</span>
              </div>
              <div class="con-row">
                <strong>出发状态</strong>：
                <span class="item label label-info">所有</span>
                <span class="item">三天内出发</span>
                <span class="item">已出发</span>
                <span class="item">已走完</span>
              </div>
              <div class="con-row">
                <strong>订单类型</strong>：
                <span class="item label label-info">所有</span>
                <span class="item">跟团游</span>
                <span class="item">整团</span>
                <span class="item">自由行</span>
              </div>
            </div>
          </form>
        </div>
        <table class="table table-bordered">
          <thead>
          <tr>
            <th>
              订单编号
            </th>
            <th>
              类型
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
              联系人
            </th>
            <th>
              预订时间
            </th>
            <th>
              订单状态
            </th>
            <th>
              合同状态
            </th>
            <th>
              操作
            </th>
          </tr>
          </thead>
          <tbody id="J_order_container">
          <tr>
            <td colspan="10">订单加载中...</td>
          </tr>
          </tbody>
        </table>
        <@mock_pagination></@mock_pagination>
      </div>
    </div>
    <script id="J_order_row" type="text/tpl">
      {{#resultList}}
      <tr>
        <td>
          <a href="/order/info/?id={{orderId}}">{{orderNumber}}</a>
        </td>
        <td>
          {{orderType}}
        </td>
        <td>
          <a href="/product/detail/?id={{productId}}">{{productName}}</a>
        </td>
        <td>
          {{beginDate}}
        </td>
        <td>
          {{travellerCount}}
        </td>
        <td>
          {{contact}}
        </td>
        <td>
          {{scheduledTime}}
        </td>
        <td>
          {{status}}
        </td>
        <td>
          {{contractStatus}}
        </td>
        <td>
          <a href="/order/confirm/?id={{orderId}}">确认单</a> <a href="/order/download/?id={{orderId}}">出团通知</a>
        </td>
      </tr>
      {{/resultList}}
      {{^resultList}}
      <tr><td colspan="10">没有订单</td></tr>
      {{/resultList}}
    </script>
    </@body>
  </@html>
</#escape>
