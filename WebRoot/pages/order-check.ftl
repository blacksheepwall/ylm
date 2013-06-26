<#-- 预订信息核对页 -->
<#assign page_name="order-check"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="预订信息核对">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/">跟团游</a> <span class="divider">/</span></li>
          <li><a href="/main/">出境线路</a> <span class="divider">/</span></li>
          <li><a href="/main/">东航直飞巴厘岛5晚6日至尊逍遥之旅</a> <span class="divider">/</span></li>
          <li class="active">预订信息核对</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div class="form-horizontal mod-body">
          <ul class="order-info clearfix">
            <li><strong>预订产品：</strong> 东航直飞巴厘岛5晚6日至尊逍遥之旅</li>
            <li><strong>出发日期：</strong> 2013-05-13</li>
            <li><strong>游客联系人：</strong> 林展科</li>
            <li><strong>联系电话：</strong> 12312312312</li>
            <li><strong>预订人数：</strong> 2大1小</li>
            <li><strong>合计费用：</strong> 16308.00</li>
            <li><strong class="desc-name">订单备注：</strong> 东航直飞巴厘岛5晚6日至尊逍遥之旅东航直飞巴厘岛5晚6日至尊逍遥之旅</li>
          </ul>
          <div>
            <strong>名单及费用明细：</strong>
            <table class="table table-bordered">
              <thead>
              <tr>
                <th>
                  类型
                </th>
                <th>
                  姓名
                </th>
                <th>
                  性别
                </th>
                <th>
                  证件号码
                </th>
                <th>
                  手机号码
                </th>
                <th>
                  门市价格
                </th>
                <th>
                  可选项目
                </th>
              </tr>
              </thead>
              <tbody id="J_order_container">
              <tr>
                <td>
                  成人
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                  保险：20.00*2=40.00
                </td>
                <td>
                  5840.00
                </td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
        <div class="order-action">
          <button id="" class="btn btn-primary">修改订单</button>
          <button id="" class="btn btn-success">确认提交</button>
          <button id="" class="btn btn-danger">取消预订</button>
        </div>
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
          <a href="/product/detail/">{{productName}}</a>
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
          <a href="/main/order-manage-confirm">确认单</a> <a href="">出团通知</a>
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
