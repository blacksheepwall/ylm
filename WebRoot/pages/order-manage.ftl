<#-- 订单管理页 -->
<#assign page_name="order-manage"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="订单管理">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li class="active">订单管理</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div id="J_condition" class="condition mod-condition">
          <div class="form-horizontal control-group search-box">
            <strong>预定日期：</strong>
            <input id="J_start_date" class="date-box" type="text" readonly>
            <strong> ~ </strong>
            <input id="J_end_date" class="date-box" type="text" readonly>
            <input id="J_search_text" class="search-input" type="text"> <button id="J_search_btn" class="btn btn-success search-btn" type="button"><i class="icon-search"></i> 搜索</button>
          </div>
          <form class="form-horizontal mod-body">
            <div>
              <div class="con-row clearfix">
                <strong class="pull-left">订单状态：</strong>
                <ul class="nav nav-pills">
                  <li class="active">
                    <a href="javascript:;" data-target="to,1">不限</a>
                  </li>
                  <li><a href="javascript:;" data-target="to,1">待确认</a></li>
                  <li><a href="javascript:;" data-target="to,1">候补</a></li>
                  <li><a href="javascript:;" data-target="to,1">已确认</a></li>
                  <li><a href="javascript:;" data-target="to,1">已取消</a></li>
                </ul>
              </div>
              <div class="con-row clearfix">
                <strong class="pull-left">合同状态：</strong>
                <ul class="nav nav-pills">
                  <li class="active">
                    <a href="javascript:;" data-target="to,1">不限</a>
                  </li>
                  <li><a href="javascript:;" data-target="to,1">组团已寄</a></li>
                  <li><a href="javascript:;" data-target="to,1">代理已签收</a></li>
                  <li><a href="javascript:;" data-target="to,1">客户已签订</a></li>
                  <li><a href="javascript:;" data-target="to,1">代理已回寄</a></li>
                  <li><a href="javascript:;" data-target="to,1">组团已签收</a></li>
                </ul>
              </div>
              <div class="con-row clearfix">
                <strong class="pull-left">出发状态：</strong>
                <ul class="nav nav-pills">
                  <li class="active">
                    <a href="javascript:;" data-target="to,1">所有</a>
                  </li>
                  <li><a href="javascript:;" data-target="to,1">三天内出发</a></li>
                  <li><a href="javascript:;" data-target="to,1">已出发</a></li>
                  <li><a href="javascript:;" data-target="to,1">已走完</a></li>
                </ul>
              </div>
              <div class="con-row clearfix">
                <strong class="pull-left">订单类型：</strong>
                <ul class="nav nav-pills">
                  <li class="active">
                    <a href="javascript:;" data-target="to,1">所有</a>
                  </li>
                  <li><a href="javascript:;" data-target="to,1">跟团游</a></li>
                  <li><a href="javascript:;" data-target="to,1">整团</a></li>
                  <li><a href="javascript:;" data-target="to,1">自由行</a></li>
                </ul>
              </div>
            </div>
          </form>
        </div>
        <table class="table table-bordered">
          <thead>
          <tr>
            <th width="130">
              订单编号
            </th>
            <th width="60">
              类型
            </th>
            <th>
              产品名称
            </th>
            <th width="70">
              出团日期
            </th>
            <th width="30">
              人数
            </th>
            <th width="60">
              联系人
            </th>
            <th width="70">
              预订时间
            </th>
            <th width="70">
              订单状态
            </th>
            <th width="70">
              合同状态
            </th>
            <th width="100">
              操作
            </th>
          </tr>
          </thead>
          <tbody id="J_order_container"></tbody>
        </table>
        <@pagination></@pagination>
      </div>
    </div>
    <script id="J_order_row" type="text/tpl">
      {{#resultList}}
      <tr>
        <td>
          <a href="/order/info/?id={{orderId}}">{{orderNumber}}</a>
        </td>
        <td>
          {{orderType.value}}
        </td>
        <td>
          <a href="/product/detail/?id={{productId}}" target="_blank">{{productName}}</a>
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
          {{status.value}}
        </td>
        <td>
          {{contractStatus}}
        </td>
        <td>
          <a href="/order/confirm/?id={{orderId}}" target="_blank">确认单</a> <a href="/order/download/?id={{orderId}}" target="_blank">出团通知</a>
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
