<#-- 预报查看 -->
<#assign page_name="group-forecast-view"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="预报查看">
    <@body>
    <div class="main-body clearfix">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/zhengtuan/">整团业务</a> <span class="divider">/</span></li>
          <li><a href="/main/group-forecast">整团预报</a> <span class="divider">/</span></li>
          <li class="active">预报查看</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div class="mod-body">
          <h5 class="mod-title"><i class="icon-flag"></i> 团队基本信息</h5>
          <div class="action-list">
            <a class="btn btn-small" href="/main/travel-itinerary" target="_blank"><i class="icon-file-alt"></i> 预报单</a>
          </div>
          <#macro user_card_popover dept="" name="" tel="" phone="">
            <div class="popover top">
              <div class="arrow"></div>
              <i class="icon icon-remove" title="关闭"></i>
              <div class="popover-content">
                <img src="/img/logo.png" alt="">
                <p>部门：${dept}</p>
                <p>姓名：${name}</p>
                <p>电话：${tel}</p>
                <p>手机：${phone}</p>
              </div>
              <div class="popover-action">
                <a href="" class="btn btn-small">站内短信</a>
                <a href="" class="btn btn-small">手机短信</a>
              </div>
            </div>
          </#macro>
          <ul id="J_group_info" class="group-info clearfix">
            <li><strong>线路名称：</strong></li>
            <li><strong>线路分类：</strong></li>
            <li><strong>线路类型：</strong></li>
            <li><strong>旅游天数：</strong></li>
            <li><strong>旅行证件：</strong></li>
            <li><strong>提前送签天数：</strong></li>
            <li><strong>出发口岸：</strong></li>
            <li><strong>出发交通：</strong></li>
            <li><strong>返回口岸：</strong></li>
            <li><strong>返回交通：</strong></li>
            <li><strong>参考报价：</strong></li>
            <li><strong>标准人数：</strong></li>
            <li><strong>报价有效期：</strong></li>
            <li><strong>产品助理：</strong><a href="">曾俊</a><#noescape><@user_card_popover></@user_card_popover></#noescape></li>
            <li><strong>适用客户：</strong></li>
            <li><strong>出行目的：</strong></li>
            <li><strong>行程站点：</strong></li>
            <li><strong>游览景点：</strong></li>
            <li><strong>产品经理推荐：</strong></li>
          </ul>
        </div>
        <div>
          <ul id="J_tab" class="nav nav-tabs">
            <li class="active">
              <a href="#"><i class="icon-calendar"></i> 团队行程</a>
            </li>
            <li><a href="#"><i class="icon-tags"></i> 团队说明</a></li>
            <li><a href="#"><i class="icon-info-sign"></i> 签证须知</a></li>
            <li><a href="#"><i class="icon-book"></i> 出行准备</a></li>
            <li><a href="#"><i class="icon-check"></i> 预订订单</a></li>
          </ul>
          <div id="J_tab_content">

          </div>
          <#include "product-temp.ftl">
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
