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
          <li><a href="/main/user-center-message-list/">消息列表</a> <span class="divider">/</span></li>
          <li class="active">消息查看</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="message-detail clearfix">
            <p><strong>发送人</strong>：王伟</p>
            <p><strong>发送时间</strong>：2013年6月15日 13:41:50</p>
            <p><strong>消息标题</strong>：xxxxxxxxx</p>
            <p><strong>消息内容</strong>：xxxxxxxxx</p>
            <p><strong>附件</strong></p>
            <div class="attachment">
              <p><a href="">xxxxxxxxxxxxxx</a></p>
              <p><a href="">xxxxxxxxxxxxxx</a></p>
            </div>
          </div>
          <div class="reply">
            <p><strong>回复内容</strong>：</p>
            <textarea name="" id="" cols="30" rows="5"></textarea>
            <div class="control-group">
              <div class="controls">
                <button id="login" class="btn btn-primary">回复</button>
                <a href="javascript:history.go(-1);" class="btn" data-dismiss="modal" aria-hidden="true">返回</a>
              </div>
            </div>
          </div>
        </div>
    </div>
    </@body>
  </@html>
</#escape>
