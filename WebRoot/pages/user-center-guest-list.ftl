<#-- 游客名单页 -->
<#assign page_name="user-center-guest-list"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="游客名单">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">游客名单</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="mod-body clearfix">
            <div class="pull-left condition">
              游客姓名 <input type="text" class="input-small"> <button class="btn btn-success search-btn" type="button">查找</button>
            </div>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  序号
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
                  联系电话
                </th>
                <th>
                  订单编号
                </th>
                <th>
                  预订产品名称
                </th>
                <th>
                  状态
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  1
                </td>
                <td>
                  林展科
                </td>
                <td>
                  男
                </td>
                <td>
                  330103195304060410
                </td>
                <td>
                </td>
                <td>
                  <a href="">YSL13042410560353</a>
                </td>
                <td>
                  <a href="/product/detail/">【双城春色】石家庄-北京双飞六日游</a>
                </td>
                <td>
                  有效
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
