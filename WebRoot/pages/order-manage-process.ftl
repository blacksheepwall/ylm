<#-- 订单操作页 -->
<#assign page_name="order-manage-process"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="订单操作">
    <@body class="order-manage">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/order-manage">订单管理</a> <span class="divider">/</span></li>
          <li class="active">订单操作</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div class="mod-body">
          <h5 class="mod-title">订单基本信息</h5>
          <div class="action-list">
            <button class="btn btn-success btn-small" type="button">预订单</button>
            <button class="btn btn-success btn-small" type="button">确认单</button>
            <button class="btn btn-success btn-small" type="button">出团通知</button>
            <button class="btn btn-success btn-small" type="button">修改联系人</button>
            <button class="btn btn-success btn-small" type="button">取消游客</button>
          </div>
          <div>
            <ul class="order-info clearfix">
              <li><strong>订单编号：</strong> YSL13042410560353</li>
              <li><strong>联系人：</strong> 张三</li>
              <li><strong>联系电话：</strong> YSL13042410560353</li>
              <li><strong>线路名称：</strong> 杭州直飞越南岘港风情五日之旅</li>
              <li><strong>团队编号：</strong> YGTGT001PA130513B</li>
              <li><strong>出发日期：</strong> YSL13042410560353</li>
              <li><strong>产品经理：</strong> YSL13042410560353</li>
              <li><strong>团队协调：</strong> YSL13042410560353</li>
              <li><strong>预订人数：</strong> YSL13042410560353</li>
              <li><strong>订单状态：</strong> YSL13042410560353</li>
              <li><strong>锁定状态：</strong> YSL13042410560353</li>
              <li><strong>订单费用：</strong> YSL13042410560353</li>
              <li><strong>已付金额：</strong> YSL13042410560353</li>
              <li><strong>余款金额：</strong> YSL13042410560353</li>
              <li><strong>截至付款：</strong> YSL13042410560353</li>
              <li><strong>创建时间：</strong> YSL13042410560353</li>
              <li><strong>创建人：</strong> YSL13042410560353</li>
              <li><strong>订单备注：</strong> YSL13042410560353</li>
            </ul>
          </div>
        </div>
        <ul class="nav nav-tabs">
          <li class="active">
            <a href="#">名单</a>
          </li>
          <li><a href="#">收款退款</a></li>
          <li><a href="#">处理信息</a></li>
        </ul>
        <div>
          <table class="table table-bordered user-list">
            <thead>
            <tr>
              <th>
                状态
              </th>
              <th>
                姓名
              </th>
              <th>
                拼音
              </th>
              <th>
                性别
              </th>
              <th>
                费用金额
              </th>
              <th>
                证件
              </th>
              <th>
                户籍
              </th>
              <th>
                手机号码
              </th>
              <th>
                备注
              </th>
              <th>
                操作
              </th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>
                正常
              </td>
              <td>
                林展科（成人）
              </td>
              <td>
                Lin ZhanKe
              </td>
              <td>
                男
              </td>
              <td>
                <a href="">1000</a>
              </td>
              <td>
                <p>身份证：330103195304060410</p>
                <p>签发日期：</p>
                <p>有效期至：</p>
                <p>签发地</p>
                <p>出生日期：1953-04-06</p>
              </td>
              <td>
                浙江
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
                <a href="">编辑</a> <a href="">附件</a>
              </td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
