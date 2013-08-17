<#-- 散拼、跟团产品预订页 -->
<#assign page_name="product-book"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="产品预订">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/">跟团游</a> <span class="divider">/</span></li>
          <li><a href="/main/">出境线路</a> <span class="divider">/</span></li>
          <li><a href="/main/">东航直飞巴厘岛5晚6日至尊逍遥之旅</a> <span class="divider">/</span></li>
          <li class="active">预订操作</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div class="form-horizontal mod-body">
          <ul class="order-info clearfix">
            <li><strong>线路名称：</strong> 东航直飞巴厘岛5晚6日至尊逍遥之旅</li>
            <li><strong>出发日期：</strong>
              <select class="date-select">
                <option>5-13   周一  YCJIS58PA130513B  剩余8个</option>
                <option>5-13   周一  YCJIS58PA130513B  剩余8个</option>
                <option>5-13   周一  YCJIS58PA130513B  剩余8个</option>
                <option>5-13   周一  YCJIS58PA130513B  剩余8个</option>
              </select>
            </li>
            <li class="clearfix">
              <div class="pull-left"><strong>成人价格：</strong> 5888.00/5580.00</div>
              <div class="pull-left people-num"><strong>人数：</strong> <input type="text"></div>
            </li>
            <li class="clearfix">
              <div class="pull-left"><strong>小孩价格：</strong> 3888.00/3580.00</div>
              <div class="pull-left people-num"><strong>人数：</strong> <input type="text"></div>
            </li>
            <li><strong>联系人：</strong> <input type="text"></li>
            <li><strong class="desc-name">订单备注：</strong> <textarea class="desc-value"></textarea></li>
            <li>
              <strong>游客名单：</strong>
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
                    <input type="text" class="name">
                  </td>
                  <td>
                    <select><option>男</option><option>女</option></select>
                  </td>
                  <td>
                    <select><option>身份证</option><option>护照</option><option>港澳通行证</option><option>台湾通行证</option></select>
                    <input type="text" class="idcard">
                  </td>
                  <td>
                    <input type="text" class="phone">
                  </td>
                  <td>
                    <input type="text" value="1000" class="price">
                  </td>
                  <td>
                    <div><strong>单房差：</strong><select><option>1</option></select></div>
                    <div><strong>保险：</strong><select><option>1</option></select></div>
                  </td>
                </tr>
                </tbody>
              </table>
            </li>
          </ul>
        </div>
        <div class="order-action">
          <button id="login" class="btn btn-primary">提交</button>
          <button class="btn" data-dismiss="modal" aria-hidden="true">取消预订</button>
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
