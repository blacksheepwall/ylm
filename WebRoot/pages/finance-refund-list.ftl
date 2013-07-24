<#-- 退款列表页 -->
<#assign page_name="finance-refund-list"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="退款列表">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/finance/">财务结算</a> <span class="divider">/</span></li>
          <li class="active">退款列表</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="mod-body">
            <div class="con-row clearfix">
              <strong class="pull-left">状态：</strong>
              <ul id="J_nav" class="nav nav-pills">
                <li class="active">
                  <a href="#">所有</a>
                </li>
                <li><a href="#">审核中</a></li>
                <li><a href="#">待付款</a></li>
                <li><a href="#">已付款</a></li>
                <li><a href="#">已取消</a></li>
              </ul>
            </div>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  退款单编号
                </th>
                <th>
                  业务类型
                </th>
                <th>
                  付款金额
                </th>
                <th>
                  用途
                </th>
                <th>
                  请款人
                </th>
                <th>
                  状态
                </th>
                <th>
                  请款时间
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  <div class="number">
                    <a href="/main/finance-refund" target="_blank">YSL13050310010390</a>
                  </div>
                </td>
                <td>
                  <div class="type">
                    订单退款
                  </div>
                </td>
                <td>
                  2000
                </td>
                <td>
                  <div class="for">
                    景点退费
                  </div>
                </td>
                <td>
                  <div class="username">
                    曾俊
                  </div>
                </td>
                <td>
                  <div class="status">
                    待财务审核
                  </div>
                </td>
                <td>
                  <div class="date">
                    2013-07-01
                  </div>
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
