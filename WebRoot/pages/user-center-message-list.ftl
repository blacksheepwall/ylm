<#-- 消息列表页 -->
<#assign page_name="user-center-message-list"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="消息列表">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/user-center/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">消息列表</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="clearfix">
            <ul class="nav nav-tabs">
              <li class="active">
                <a href="#">已接收</a>
              </li>
              <li><a href="#">已发送</a></li>
              <li class="send-btn"><a href="/main/user-center-send-message">发送消息</a></li>
            </ul>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  选择
                </th>
                <th>
                  序号
                </th>
                <th>
                  标题
                </th>
                <th>
                  附件
                </th>
                <th>
                  发送人
                </th>
                <th>
                  发送时间
                </th>
                <th>
                  操作
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  <input type="checkbox">
                </td>
                <td>
                </td>
                <td>
                  <a href="/main/user-center-message/">收款通知</a>
                </td>
                <td>
                  预览  下载
                </td>
                <td>
                  2013年6月14日 23:22:42
                </td>
                <td>
                  2013年6月14日 23:22:42
                </td>
                <td>
                  <a href="">查看  回复</a>
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
