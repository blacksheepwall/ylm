<#-- 首页 -->
<#assign page_name="main"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="首页">
    <@body class="main-page">
    <div class="main-body clearfix">
      <div class="clearfix">
        <div class="search-box">
          <#--<div class="search-title"><i class="icon-search"></i> 产品搜索</div>-->
          <form class="form-search">
            <select class="top-search">
              <option>杭州出发</option>
              <option>杭州出发</option>
              <option>杭州出发</option>
              <option>杭州出发</option>
            </select>
            <input class="search-input" type="text">
            <button class="btn search-btn btn-success" type="button"><i class="icon-search"></i> 搜索</button>
          </form>
          <#--<div class="search-title"><i class="icon-thumbs-up"></i> 当季热门</div>-->
          <#--<div class="city-list clearfix">-->
            <#--<span class="city-key">国内：</span>-->
            <#--<ul class="city-name clearfix">-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
            <#--</ul>-->
          <#--</div>-->
          <#--<div class="city-list clearfix">-->
            <#--<span class="city-key">国内：</span>-->
            <#--<ul class="city-name clearfix">-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
              <#--<li><a href="" class="link">海南</a></li>-->
            <#--</ul>-->
          <#--</div>-->
        </div>
        <div class="system-news">
          <h4 class="news-title"><i class="icon-bullhorn"></i> 系统公告</h4>
          <ol id="J_news_list" class="news-list">
          	<#list systemBulletinResult.resultList as it>
            <li class="item">
              <a class="link" href="/bulletin/info/?id=${it.id}" target="_blank">${it.title} <span class="date">${it.createDate?string('MM月dd日')}</span></a>
            </li>
            </#list>
          </ol>
          <a class="all-news" href="/bulletin" target="_blank">更多 »</a>
        </div>
      </div>
      <#--<div class="side-box">-->
      <div class="business-news mod-body">
        <h3 class="mod-title">
          <i class="icon-volume-up"></i> 业务公告 <a class="all-news" href="/bulletin" target="_blank">所有公告 »</a></h3>
        <ol>
          <#list bulletinResult.resultList as bulletin>
          <li><a class="link" href="/bulletin/info/?id=${bulletin.id}" target="_blank">${bulletin.title}</a> <span class="date">${bulletin.createDate?string('MM月dd日')}</span></li>
          </#list>
        </ol>
      </div>
      <#--</div>-->
    </div>
    <div class="main-body clearfix">
      <div class="mod-product">
        <h3 class="mod-title title-green">热卖产品列表 <#--<a href="" class="more">更多国内产品</a>--></h3>
        <ol>
        <#list hotPdts.resultList as it>
        	<#if it.keywords??>
        	<li>
              <div>
                <span class="label label-success">${it.keywords}</span>
                <a href="" class="product-title">${it.title}</a>
                <span class="price">${it.storePrice}</span>
              </div>
              <div>
                <span class="start">出发口岸：${it.leaveCity}</span><span class="date">日期：${it.leaveDate?string('MM-dd')}</span><span
                class="origin-price">${it.price}起</span>
              </div>
            </li>
            <#else>
            <li>
              <div>
                <a href="" class="product-title">${it.title}</a>
                <span class="muted">新加坡航空</span>
                <span class="price">${it.storePrice}</span>
              </div>
              <div>
                <span class="start">出发口岸：${it.leaveCity}</span>
                <span class="start">往返交通：${it.returnTraffic}</span>
                <span class="date">发团日期：${it.leaveDate?string('MM-dd')}</span><span
                class="origin-price">${it.price}起</span>
              </div>
            </li>
            </#if>
        </#list>
        </ol>
      </div>
      <div class="mod-product">
        <h3 class="mod-title title-orange">特价产品列表 <#--<a href="" class="more">更多国内产品</a>--></h3>
        <ol>
              <#list specialPdts.resultList as it>
        	<#if it.keywords??>
        	<li>
              <div>
                <span class="label label-success">${it.keywords}</span>
                <a href="" class="product-title">${it.title}</a>
                <span class="price">${it.storePrice}</span>
              </div>
              <div>
                <span class="start">出发口岸：${it.leaveCity}</span><span class="date">日期：${it.leaveDate?string('MM-dd')}</span><span
                class="origin-price">${it.price}起</span>
              </div>
            </li>
            <#else>
            <li>
              <div>
                <a href="" class="product-title">${it.title}</a>
                <span class="muted">新加坡航空</span>
                <span class="price">${it.storePrice}</span>
              </div>
              <div>
                <span class="start">出发口岸：${it.leaveCity}</span>
                <span class="start">往返交通：${it.returnTraffic}</span>
                <span class="date">发团日期：${it.leaveDate?string('MM-dd')}</span><span
                class="origin-price">${it.price}起</span>
              </div>
            </li>
            </#if>
        </#list>
        </ol>
      </div>
    </div>
    <div class="main-body clearfix">
      <h3 class="mod-title title-black">尾单产品列表 <#--<a href="" class="more">更多国内产品</a>--></h3>
      <div class="mod-product">
        <ol>
      <#list endPdts.resultList as it>
        	<#if it.keywords??>
        	<li>
              <div>
                <span class="label label-success">${it.keywords}</span>
                <a href="" class="product-title">${it.title}</a>
                <span class="price">${it.storePrice}</span>
              </div>
              <div>
                <span class="start">出发口岸：${it.leaveCity}</span><span class="date">日期：${it.leaveDate?string('MM-dd')}</span><span
                class="origin-price">${it.price}起</span>
              </div>
            </li>
            <#else>
            <li>
              <div>
                <a href="" class="product-title">${it.title}</a>
                <span class="muted">新加坡航空</span>
                <span class="price">${it.storePrice}</span>
              </div>
              <div>
                <span class="start">出发口岸：${it.leaveCity}</span>
                <span class="start">往返交通：${it.returnTraffic}</span>
                <span class="date">发团日期：${it.leaveDate?string('MM-dd')}</span><span
                class="origin-price">${it.price}起</span>
              </div>
            </li>
            </#if>
        </#list>
        </ol>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
