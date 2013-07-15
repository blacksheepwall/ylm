<#-- 快捷菜单页 -->
<#assign page_name="user-center-shortcut-menu"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="快捷菜单">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">快捷菜单</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 form-horizontal">
          <div class="mod-body">
            <h5 class="mod-title">系统默认快捷菜单</h5>
            <div class="control-group">
              <label class="control-label default-menu">用户中心：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 用户中心</a>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">管理中心：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 管理中心</a>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">常见问题：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 常见问题</a>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">我的订单：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 用户中心 / 我的订单</a>
              </div>
            </div>
          </div>
          <div class="mod-body">
            <h5 class="mod-title">用户自定义快捷菜单</h5>
            <div class="control-group">
              <label class="control-label default-menu">整团预报：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 整团业务 / 整团预报</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">整团团队：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 整团业务 / 整团团队</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">旅游线路：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 整团业务 / 旅游线路</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">新增汇款：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 财务结算 / 新增汇款</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">汇款列表：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 财务结算 / 汇款列表</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">退款列表：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 财务结算 / 退款列表</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">总报表：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 财务结算 / 总报表</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">日报表：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 财务结算 / 业务日报表</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">月报表：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 整团业务 / 业务月报表</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">新增系统用户：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 管理中心 / 新增系统用户</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">游客生日提醒：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 管理中心 / 生日短信</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">我的收藏：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 用户中心 / 我的收藏</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label default-menu">我的业绩：</label>
              <div class="controls value">
                <a href="javascript:;">首页 / 用户中心 / 业绩汇总</a>
                <label class="checkbox inline">
                  <input type="checkbox">启用
                </label>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <button id="login" class="btn btn-primary">提交</button>
              </div>
            </div>
          </div>
        </div>
    </div>
    </@body>
  </@html>
</#escape>
