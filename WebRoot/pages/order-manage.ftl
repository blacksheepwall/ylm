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
              <span>预定日期</span>
              <input class="date-box" type="text">
              <span>至</span>
              <input class="date-box" type="text">
              <input type="text"> <button class="btn btn-success search-btn" type="button"><i class="icon-search"></i> 搜索</button>
            </div>
            <div>
              <div class="con-row">
                订单状态：不限   待确认   候补    已确认    已取消
              </div>
              <div class="con-row">
                合同状态：不限   组团已寄   代理已签收   客户已签订   代理已回寄   组团已签收
              </div>
              <div class="con-row">
                出发状态：所有   三天内出发   已出发   已走完
              </div>
              <div class="con-row">
                订单类型：所有   跟团游   整团   自由行
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
          <tbody>
          <#list orders.resultList as it>
          <tr>
            <td>
              <a href="/main/order-manage-process">${it.orderNumber}</a>
            </td>
            <td>
              ${it.orderType.showValue()}
            </td>
            <td>
              <a href="/product/detail/">${it.productName}</a>
            </td>
            <td>
              ${it.beginDate}
            </td>
            <td>
              ${it.travellerCount}
            </td>
            <td>
              ${it.contact}
            </td>
            <td>
              ${it.scheduledTime}
            </td>
            <td>
              ${it.status!}
            </td>
            <td>
              ${it.contractStatus}
            </td>
            <td>
              <a href="/main/order-manage-confirm">确认单</a> <a href="">出团通知</a>
            </td>
          </tr>
          </#list>
          </tbody>
        </table>
        <@mock_pagination></@mock_pagination>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
