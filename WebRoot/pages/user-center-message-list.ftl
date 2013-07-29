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
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">消息列表</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <ul id="J_tab" class="nav nav-tabs">
            <li class="active">
              <a href="#"><i class="icon-signin"></i> 已接收</a>
            </li>
            <li>
              <a href="#"><i class="icon-signout"></i> 已发送</a>
            </li>
          </ul>
          <div class="send-btn">
            <a href="/main/user-center-send-message"><i class="icon-envelope-alt"></i> 发送消息</a>
          </div>
          <div id="J_tab_content">
            <div style="display: block;">
              <table class="table table-hover table-bordered">
                <thead>
                <tr>
                  <th>
                    <label><input id="J_check_all_inbox" type="checkbox" value="全选">全选</label>
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
                <#list inboxMessages.resultList as it>
                <tr>
                  <td>
                    <input type="checkbox">
                  </td>
                  <td>
                    ${it_index + 1}
                  </td>
                  <td>
                    <a href="/u/msginfo/?id=${it.id}">${it.title}</a>
                  </td>
                  <td>
                    <a href="/u/msginfo/?id=${it.id}"><i class="icon-search"></i> 预览</a>
                    <a href="javascript:;"><i class="icon-download-alt"></i> 下载</a>
                  </td>
                  <td>
                    ${it.sender}
                  </td>
                  <td>
                    ${it.sendTime?string('yyyy-MM-dd')}
                  </td>
                  <td>
                    <a href="/u/msginfo/?id=${it.id}"><i class="icon-eye-open"></i> 查看 </a>
                    <a href="/u/msginfo/?id=${it.id}"><i class="icon-reply"></i> 回复</a>
                  </td>
                </tr>
                </#list>
                </tbody>
              </table>
              <@pagination></@pagination>
            </div>
            <div style="display: none;">
              <table class="table table-hover table-bordered" style="display: none;">
                <thead>
                <tr>
                  <th>
                    <label><input id="J_check_all_outbox" type="checkbox" value="全选">全选</label>
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
                  <#list outboxMessages.resultList as it>
                  <tr>
                    <td>
                      <input type="checkbox">
                    </td>
                    <td>
                    ${it_index + 1}
                    </td>
                    <td>
                      <a href="/u/msginfo/?id=${it.id}">${it.title}</a>
                    </td>
                    <td>
                      <a href="javascript:;"><i class="icon-search"></i> 预览</a>
                      <a href="javascript:;"><i class="icon-download-alt"></i> 下载</a>
                    </td>
                    <td>
                    ${it.sender}
                    </td>
                    <td>
                    ${it.sendTime?string('yyyy-MM-dd')}
                    </td>
                    <td>
                      <a href="/u/msginfo/?id=${it.id}"><i class="icon-eye-open"></i> 查看 </a>
                      <a href=""><i class="icon-reply"></i> 回复</a>
                    </td>
                  </tr>
                  </#list>
                </tbody>
              </table>
              <@pagination></@pagination>
              </div>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
