<#-- 管理中心页 -->
<#assign page_name="manage"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="管理中心">
    <@body class="main-page">
    <div class="container-fluid">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main.do">首页</a> <span class="divider">/</span></li>
          <li class="active">管理中心</li>
        </ul>
        <div class="input-append pull-right">
          <input class="input-xxlarge" type="text">
          <button class="btn" type="button">搜索</button>
        </div>
      </div>
      <div class="row-fluid">
        <@manage_sidebar></@manage_sidebar>
        <div class="span10">
          <div class="clearfix">
            <h5 class="mod-title">单位信息</h5>
            <div class="pull-left">
              <label class="control-label">单位名称：</label>
              <label class="control-label">单位简称：</label>
              <label class="control-label">经营许可证：</label>
              <label class="control-label">联系人：</label>
              <label class="control-label">公司电话：</label>
              <label class="control-label">电子邮箱：</label>
              <label class="control-label">开户银行：</label>
              <label class="control-label">地址：</label>
              <label class="control-label">邮政编码：</label>
            </div>
            <div class="pull-left">
              <label class="control-label">所在区域：</label>
              <label class="control-label">法人代表：</label>
              <label class="control-label">经营范围：</label>
              <label class="control-label">联系电话：</label>
              <label class="control-label">公司传真：</label>
              <label class="control-label">账户名称：</label>
              <label class="control-label">银行账号：</label>
            </div>
          </div>
          <div class="clearfix">
            <h5 class="mod-title">代理信息</h5>
            <div class="pull-left">
              <label class="control-label">代理类型：普通代理</label>
              <label class="control-label">代理协议编号：</label>
              <label class="control-label">创建时间：</label>
            </div>
            <div class="pull-left">
              <label class="control-label">代理等级：</label>
              <label class="control-label">协议有效期：</label>
              <label class="control-label">创建人：</label>
            </div>
            <div class="pull-left">
              <label class="control-label">服务专员：</label>
              <label class="control-label">最大账期：</label>
              <label class="control-label"><a href="">代理协议附件</a></label>
            </div>
            <div class="pull-left">
              <label class="control-label">代理状态：</label>
              <label class="control-label">授信金额：</label>
            </div>
          </div>
          <div class="clearfix">
            <h5 class="mod-title">系统设置信息</h5>
            <label class="control-label">行程单设置：组团抬头</label>
            <label class="control-label">结算价格设置：产品列表显示、产品查看显示</label>
            <label class="control-label">合同默认设置：组团合同</label>
            <label class="control-label">公司log：</label>
          </div>
        </div>
      </div>
    </@body>
  </@html>
</#escape>
