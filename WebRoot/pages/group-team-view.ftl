<#-- 团队查看 -->
<#assign page_name="group-team-view"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="团队查看">
    <@body>
    <div class="main-body clearfix">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/group-tour">整团业务</a> <span class="divider">/</span></li>
          <li><a href="/main/group-team">整团团队</a> <span class="divider">/</span></li>
          <li class="active">团队查看</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div class="mod-body">
          <h5 class="mod-title">团队基本信息</h5>
          <div class="action-list">
            <a class="btn btn-small" href="/main/travel-itinerary" target="_blank"><i class="icon-file-alt"></i> 行程单</a>
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
            <li><strong>团队编号：</strong></li>
            <li><strong>线路名称：</strong></li>
            <li><strong>旅游天数：</strong></li>
            <li><strong>出发城市：</strong></li>
            <li><strong>往返交通：</strong></li>
            <li><strong>团队日期：</strong></li>
            <li><strong>计划人数：</strong></li>
            <li><strong>全陪人数：</strong></li>
            <li><strong>实际人数：</strong></li>
            <li><strong>成团状态：</strong></li>
            <li><strong>截至送签日期：</strong></li>
            <li><strong>开票日期：</strong></li>
            <li><strong>是否拼团：</strong></li>
            <li><strong>产品助理：</strong><a href="">曾俊</a><#noescape><@user_card_popover></@user_card_popover></#noescape></li>
            <li><strong>团队计调：</strong><a href="">曾俊</a><#noescape><@user_card_popover></@user_card_popover></#noescape></li>
            <li><strong>计调状态：</strong></li>
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
