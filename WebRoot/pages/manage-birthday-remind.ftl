<#-- 生日提醒页 -->
<#assign page_name="manage-birthday-remind"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="生日提醒">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/manage/">管理中心</a> <span class="divider">/</span></li>
          <li class="active">生日提醒</li>
        </ul>
        <#--<div class="input-append pull-right">-->
          <#--<input class="input-xxlarge" type="text">-->
          <#--<button class="btn" type="button">搜索</button>-->
        <#--</div>-->
      </div>
      <div class="row-fluid">
        <@manage_sidebar></@manage_sidebar>
        <div class="span10">
          <p>
            <button class="btn btn-primary btn-small">发送生日短信</button>
          </p>
          <table class="table table-hover table-bordered">
            <thead>
            <tr>
              <th>
                选择
              </th>
              <th>
                姓名
              </th>
              <th>
                序号
              </th>
              <th>
                性别
              </th>
              <th>
                出生日期
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
    </@body>
  </@html>
</#escape>
