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
          <form class="form-horizontal mod-body">
            <div class="control-group search-box">
              <strong>预定日期：</strong>
              <input id="J_start_date" class="date-box" type="text" readonly>
              <strong> ~ </strong>
              <input id="J_end_date" class="date-box" type="text" readonly>
              <input id="J_search_text" class="search-input" type="text"> <button id="J_search_btn" class="btn btn-success search-btn" type="button"><i class="icon-search"></i> 搜索</button>
            </div>
            <div>
              <div class="con-row clearfix">
                <strong class="pull-left">订单状态：</strong>
                <ul class="nav nav-pills">
                  <li class="active">
                    <a href="#">不限</a>
                  </li>
                  <li><a href="#">待确认</a></li>
                  <li><a href="#">候补</a></li>
                  <li><a href="#">已确认</a></li>
                  <li><a href="#">已取消</a></li>
                </ul>
              </div>
              <div class="con-row clearfix">
                <strong class="pull-left">合同状态：</strong>
                <ul class="nav nav-pills">
                  <li class="active">
                    <a href="#">不限</a>
                  </li>
                  <li><a href="#">组团已寄</a></li>
                  <li><a href="#">代理已签收</a></li>
                  <li><a href="#">客户已签订</a></li>
                  <li><a href="#">代理已回寄</a></li>
                  <li><a href="#">组团已签收</a></li>
                </ul>
              </div>
              <div class="con-row clearfix">
                <strong class="pull-left">出发状态：</strong>
                <ul class="nav nav-pills">
                  <li class="active">
                    <a href="#">所有</a>
                  </li>
                  <li><a href="#">三天内出发</a></li>
                  <li><a href="#">已出发</a></li>
                  <li><a href="#">已走完</a></li>
                </ul>
              </div>
              <div class="con-row clearfix">
                <strong class="pull-left">订单类型：</strong>
                <ul class="nav nav-pills">
                  <li class="active">
                    <a href="#">所有</a>
                  </li>
                  <li><a href="#">跟团游</a></li>
                  <li><a href="#">整团</a></li>
                  <li><a href="#">自由行</a></li>
                </ul>
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
          {{orderType.key}}
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
          {{status.key}}
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
