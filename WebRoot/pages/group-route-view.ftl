<#-- 线路查看 -->
<#assign page_name="group-route-view"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="线路查看">
    <@body>
    <div class="main-body clearfix">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/group-tour">整团业务</a> <span class="divider">/</span></li>
          <li><a href="/main/group-route">旅游线路</a> <span class="divider">/</span></li>
          <li class="active">线路查看</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div class="mod-body">
          <h5 class="mod-title"><i class="icon-map-marker"></i> 新疆吐鲁番、 天池、南山、敦煌丝路风情双飞单卧5日游</h5>
          <div class="action-list">
            <span class="muted">最近更新：2013-04-19 12:09</span>
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
            <li><strong>线路编号：</strong></li>
            <li><strong>线路分类：</strong></li>
            <li><strong>线路类型：</strong></li>
            <li><strong>旅游天数：</strong></li>
            <li><strong>旅行证件：</strong></li>
            <li><strong>提前送签天数：</strong></li>
            <li><strong>出发口岸：</strong></li>
            <li><strong>出发交通：</strong></li>
            <li><strong>返回口岸：</strong></li>
            <li><strong>返回交通：</strong></li>
            <li><strong>行程站点：</strong></li>
            <li><strong>游览景点：</strong></li>
            <li><strong>线路主题：</strong></li>
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
