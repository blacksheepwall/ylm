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
          <form id="J_search_form" class="form-search">
            <select id="J_leave_city" class="top-search">
              <option value='330100'>杭州出发</option>
              <option value='310000'>上海出发</option>
              <option value='330200'>宁波出发</option>
              <option value='330300'>温州出发</option>
              <option value='320100'>南京出发</option>
              <option value='331000'>台州出发</option>
            </select>
            <input id="J_search_txt" class="search-input" type="text">
            <button id="J_search_btn" class="btn search-btn btn-success" type="button"><i class="icon-search"></i> 搜索</button>
          </form>
        </div>
        <div class="system-news">
          <h4 class="news-title"><i class="icon-bullhorn"></i> 系统公告</h4>
          <ol id="J_news_list" class="news-list">
          	<#list systemBulletinResult.resultList as it>
            <li class="item">
              <a class="link" href="/bulletin/info/?id=${it.id}&type=system" target="_blank">${it.title} <span class="date">${it.createDate?string('MM月dd日')}</span></a>
            </li>
            </#list>
          </ol>
          <a class="all-news" href="/bulletin?type=system" target="_blank">更多 »</a>
        </div>
      </div>
      <#--<div class="side-box">-->
      <div class="business-news mod-body">
        <h3 class="mod-title">
          <i class="icon-volume-up"></i> 业务公告 <a class="all-news" href="/bulletin?type=business" target="_blank">所有公告 »</a></h3>
        <ol>
          <#list bulletinResult.resultList as bulletin>
          <li><a class="link" href="/bulletin/info/?id=${bulletin.id}&type=business" target="_blank">${bulletin.title}</a> <span class="date">${bulletin.createDate?string('MM月dd日')}</span></li>
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
                <a href="/product/detail/?id=${it.productId}" class="product-title">${it.title}</a>
                <span class="price">${it.storePrice}</span>
              </div>
              <div>
                <span class="start">出发口岸：${it.leaveCityName!}</span><span
                class="date">日期：${it.leaveDate?string('MM-dd')}</span><span
                class="origin-price">${it.price}起</span>
              </div>
            </li>
            <#else>
              <li>
                <div>
                  <a href="/product/detail/?id=${it.productId}" class="product-title">${it.title}</a>
                  <span class="muted">${it.leaveTrafficName!}</span>
                  <span class="price">${it.storePrice}</span>
                </div>
                <div>
                  <span class="start">出发口岸：${it.leaveCityName!}</span>
                  <span class="start">往返交通：${it.leaveTrafficName!}/${it.returnTrafficName!}</span>
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
                  <a href="/product/detail/?id=${it.productId}" class="product-title">${it.title}</a>
                  <span class="price">${it.storePrice}</span>
                </div>
                <div>
                  <span class="start">出发口岸：${it.leaveCityName!}</span><span
                  class="date">日期：${it.leaveDate?string('MM-dd')}</span><span
                  class="origin-price">${it.price}起</span>
                </div>
              </li>
            <#else>
              <li>
                <div>
                  <a href="/product/detail/?id=${it.productId}" class="product-title">${it.title}</a>
                  <span class="muted">${it.leaveTrafficName!}</span>
                  <span class="price">${it.storePrice}</span>
                </div>
                <div>
                  <span class="start">出发口岸：${it.leaveCityName!}</span>
                  <span class="start">往返交通：${it.leaveTrafficName!}/${it.returnTrafficName!}</span>
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
                  <a href="/product/detail/?id=${it.productId}" class="product-title">${it.title}</a>
                  <span class="price">${it.storePrice}</span>
                </div>
                <div>
                  <span class="start">出发口岸：${it.leaveCityName!}</span><span
                  class="date">日期：${it.leaveDate?string('MM-dd')}</span><span
                  class="origin-price">${it.price}起</span>
                </div>
              </li>
            <#else>
              <li>
                <div>
                  <a href="/product/detail/?id=${it.productId}" class="product-title">${it.title}</a>
                  <span class="muted">${it.leaveTrafficName!}</span>
                  <span class="price">${it.storePrice}</span>
                </div>
                <div>
                  <span class="start">出发口岸：${it.leaveCityName!}</span>
                  <span class="start">往返交通：${it.leaveTrafficName!}/${it.returnTrafficName!}</span>
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
