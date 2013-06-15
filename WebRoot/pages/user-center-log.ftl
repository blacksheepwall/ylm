<#-- 登录日志页 -->
<#assign page_name="user-center-log"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="登录日志">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">登录日志</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body mod-body">
          <div class="clearfix">
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  登录账户
                </th>
                <th>
                  登录情况
                </th>
                <th>
                  登录IP
                </th>
                <th>
                  登录时间
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
