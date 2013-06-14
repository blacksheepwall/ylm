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
          <li><a href="/main/user-center/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">我的订单</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="clearfix">
            <form class="form-search">
              <input class="search-input" type="text">
              <button class="btn btn-success search-btn" type="button">查找</button>
            </form>
            <table class="table table-hover table-bordered">
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
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  1
                </td>
                <td>
                  2
                </td>
                <td>
                  3
                </td>
                <td>
                  4
                </td>
                <td>
                  1
                </td>
                <td>
                  2
                </td>
                <td>
                  3
                </td>
                <td>
                  4
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
