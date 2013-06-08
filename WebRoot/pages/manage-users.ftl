<#-- 系统用户列表页 -->
<#assign page_name="manage-users"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="系统用户列表">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/manage/">管理中心</a> <span class="divider">/</span></li>
          <li class="active">系统用户列表</li>
        </ul>
        <#--<div class="input-append pull-right">-->
          <#--<input class="input-xxlarge" type="text">-->
          <#--<button class="btn" type="button">搜索</button>-->
        <#--</div>-->
      </div>
      <div class="row-fluid">
        <@manage_sidebar></@manage_sidebar>
        <div class="span10">
          <h5 class="mod-title">系统用户列表 <a class="pull-right" href="/main/manage-add-user/">新增用户</a></h5>
          <table class="table table-hover table-bordered">
            <thead>
            <tr>
              <th>
                姓名
              </th>
              <th>
                性别
              </th>
              <th>
                部门
              </th>
              <th>
                联系电话
              </th>
              <th>
                手机号码
              </th>
              <th>
                邮箱
              </th>
              <th>
                QQ
              </th>
              <th>
                系统账户
              </th>
              <th>
                角色
              </th>
              <th>
                状态
              </th>
              <th>
                操作
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
              <td>
                1
              </td>
              <td>
                2
              </td>
              <td>
                3
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
