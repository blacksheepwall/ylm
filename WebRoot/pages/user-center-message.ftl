<#-- 消息查看页 -->
<#assign page_name="user-center-message"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="消息查看">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li><a href="/u/msglist/">消息列表</a> <span class="divider">/</span></li>
          <li class="active">消息查看</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="message-detail clearfix">
            <p><strong>发送人</strong>：${message.sender}</p>
            <p><strong>发送时间</strong>：${message.sendTime?string('yyyy年MM月dd日 HH:mm:ss')}</p>
            <p><strong>消息标题</strong>： ${message.title}</p>
            <p><strong>消息内容</strong>：${message.content}</p>
            <p><strong>附件</strong></p>
            <div class="attachment">
              <p><a href=""></a></p>
              <p><a href=""></a></p>
            </div>
          </div>
          <div class="reply">
            <p><strong>回复内容</strong>：</p>
            <textarea id="J_content" cols="30" rows="5"></textarea>
            <div class="control-group">
              <div class="controls">
                <button id="J_send" class="btn btn-primary">回复</button>
                <a href="javascript:history.go(-1);" class="btn">返回</a>
              </div>
            </div>
          </div>
        </div>
    </div>
    <script>
      id = '${message.id}';
      title = 'Re: ${message.title}';
      </script>
    </@body>
  </@html>
</#escape>
