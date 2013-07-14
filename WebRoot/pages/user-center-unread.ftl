<#-- 未读消息页 -->
<#assign page_name="user-center-unread"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="未读消息">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">未读消息</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="mod-body clearfix">
            <h3 class="mod-title">未读消息列表</h3>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
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
                  <a href=""><i class="icon-eye-open"></i> 查看 </a>
                  <a href=""><i class="icon-reply"></i> 回复 </a>
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
