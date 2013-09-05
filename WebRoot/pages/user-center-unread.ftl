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
                <th width="80">
                  序号
                </th>
                <th>
                  标题
                </th>
                <th width="80">
                  附件
                </th>
                <th width="80">
                  发送人
                </th>
                <th width="120">
                  发送时间
                </th>
                <th width="80">
                  操作
                </th>
              </tr>
              </thead>
              <tbody>
              <#list unreadMsg.resultList as it>
              <tr>
                <td>
                ${it_index+1}
                </td>
                <td>
                  <a href="/u/msginfo/?id=${it.id}">${it.title}</a>
                </td>
                <td>
                  <a href="">预览</a>&nbsp;<a href="">下载</a>
                </td>
                <td>
                  ${it.sender}
                </td>
                <td>
                  ${it.sendTime?string('yyyy-MM-dd')}
                </td>
                <td>
                  <a href="/u/msginfo/?id=${it.id}"><i class="icon-eye-open"></i> 查看 </a>
                  <a href=""><i class="icon-reply"></i> 回复 </a>
                </td>
              </tr>
              </#list>
              <#if unreadMsg.resultList?size==0>
              <tr>
                <td colspan="6">还没有数据</td>
              </tr>
              </#if>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
