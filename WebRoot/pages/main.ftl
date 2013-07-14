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
          <ol class="news-list">
            <li><a href="" class="link">系统开始正式使用，欢迎反应系统问题</a> <span class="date">6月20日</span></li>
          </ol>
        </div>
      </div>
      <#--<div class="side-box">-->
      <div class="business-news mod-body">
        <h3 class="mod-title"><i class="icon-volume-up"></i> 业务公告 <#--<a href="" class="more">更多国内产品</a>--></h3>
        <ol>
          <#list bulletinResult.resultList as bulletin>
          <li><a href="/bulletin/info/?id=${bulletin.id}" class="link">${bulletin.title}</a> <span class="date">${bulletin.createDate?string('MM月dd日')}</span></li>
          </#list>
        </ol>
      </div>
      <#--</div>-->
    </div>
    <div class="main-body clearfix">
      <div class="mod-product">
        <h3 class="mod-title title-green">热卖产品列表 <#--<a href="" class="more">更多国内产品</a>--></h3>
        <ol>
          <#assign promote_product_item>
            <li>
              <div>
                <span class="label label-success">特价</span>
                <a href="" class="product-title">武夷山双卧4日游含九曲溪漂流</a>
                <span class="price">￥2500</span>
              </div>
              <div>
                <span class="start">出发口岸：杭州</span><span class="date">日期：6-28</span><span
                class="origin-price">￥2500起</span>
              </div>
            </li>
          </#assign>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#assign promote_product_item>
            <li>
              <div>
                <a href="" class="product-title">巴厘岛+新加坡5晚6日尊贵游</a>
                <span class="muted">新加坡航空</span>
                <span class="price">￥2500</span>
              </div>
              <div>
                <span class="start">出发口岸：杭州</span>
                <span class="start">往返交通：飞机</span>
                <span class="date">发团日期：6-28</span><span
                class="origin-price">￥2500起</span>
              </div>
            </li>
          </#assign>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
        </ol>
      </div>
      <div class="mod-product">
        <h3 class="mod-title title-orange">特价产品列表 <#--<a href="" class="more">更多国内产品</a>--></h3>
        <ol>
          <#assign promote_product_item>
            <li>
              <div>
                <span class="label label-success">特价</span>
                <a href="" class="product-title">武夷山双卧4日游含九曲溪漂流</a>
                <span class="price">￥2500</span>
              </div>
              <div>
                <span class="start">出发口岸：杭州</span><span class="date">日期：6-28</span><span
                class="origin-price">￥2500起</span>
              </div>
            </li>
          </#assign>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#assign promote_product_item>
            <li>
              <div>
                <a href="" class="product-title">巴厘岛+新加坡5晚6日尊贵游</a>
                <span class="muted">新加坡航空</span>
                <span class="price">￥2500</span>
              </div>
              <div>
                <span class="start">出发口岸：杭州</span>
                <span class="start">往返交通：飞机</span>
                <span class="date">发团日期：6-28</span><span
                class="origin-price">￥2500起</span>
              </div>
            </li>
          </#assign>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
        </ol>
      </div>
    </div>
    <div class="main-body clearfix">
      <h3 class="mod-title title-blue">尾单产品列表 <#--<a href="" class="more">更多国内产品</a>--></h3>
      <div class="mod-product">
        <ol>
          <#assign promote_product_item>
            <li>
              <div>
                <span class="label label-success">特价</span>
                <a href="" class="product-title">武夷山双卧4日游含九曲溪漂流</a>
                <span class="price">￥2500</span>
              </div>
              <div>
                <span class="start">出发口岸：杭州</span><span class="date">日期：6-28</span><span
                class="origin-price">￥2500起</span>
              </div>
            </li>
          </#assign>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
          <#noescape>${promote_product_item}</#noescape>
        </ol>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
