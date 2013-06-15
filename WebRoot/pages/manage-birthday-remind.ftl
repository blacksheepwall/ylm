<#-- 生日提醒页 -->
<#assign page_name="manage-birthday-remind"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="生日提醒">
    <@body class="manage-center">
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
        <div class="span10 mod-body">
          <p>
            <button class="btn btn-success btn-small">发送生日短信</button>
          </p>
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
              <input type="checkbox">
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
            <td>
              4
            </td>
          </tr>
          </tbody>
        </table>
          <div class="modal fade in">
            <div class="modal-header">
              <h3 class="text-center">发送生日短信</h3>
            </div>
            <form class="modal-body form-horizontal" action="/login/" method="post">
              <div class="control-group">
                <label class="control-label">发送号码</label>
                <div class="controls">
                  <textarea name="number" rows="5" cols="1000"></textarea>
                </div>
              </div>
              <div class="control-group">
                <label class="control-label">短信内容</label>
                <div class="controls">
                  <textarea class="content" name="content" rows="5"></textarea>
                </div>
              </div>
              <p class="text-center">短信内容不能超过70个中文，包括标点符号，落款内容</p>
              <div class="modal-footer">
                <button id="login" class="btn btn-primary">发送</button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
