<#-- 首页 -->
<#assign page_name="main"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="首页">
    <@body class="main-page">
    <div class="main-body clearfix">
      <div class="search-box">
        <div class="search-title"><i class="icon-search"></i> 产品搜索</div>
        <form class="form-search">
          <select class="top-search">
            <option>杭州出发</option>
            <option>杭州出发</option>
            <option>杭州出发</option>
            <option>杭州出发</option>
          </select>
          <input class="search-input" type="text">
          <button class="btn btn-success search-btn" type="button">搜索</button>
        </form>
        <div class="search-title"><i class="icon-thumbs-up"></i> 当季热门</div>
        <div class="city-list clearfix">
          <span class="city-key">国内：</span>
          <ul class="city-name clearfix">
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
          </ul>
        </div>
        <div class="city-list clearfix">
          <span class="city-key">国内：</span>
          <ul class="city-name clearfix">
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
            <li>海南</li>
            <li>三亚</li>
            <li>海口</li>
          </ul>
        </div>
      </div>
      <div class="side-box">
        <h4 class="mod-inner-title"><i class="icon-bullhorn"></i> 系统公告 <a class="more" href="">所有公告</a></h4>
        <ol>
          <li>系统开始正式使用，欢迎反应系统问题 <span class="date">6月20日</span></li>
          <li>6月天猫购物送大礼 <span class="date">6月20日</span></li>
          <li>暑期毕业季减压游流行 <span class="date">6月20日</span></li>
          <li>79岁卖画奶奶圆盖房梦 <span class="date">6月20日</span></li>
        </ol>
        <h4 class="mod-inner-title"><i class="icon-globe"></i> 业务公告 <a class="more" href="">所有公告</a></h4>
        <ol>
          <li>商务部：对欧盟葡萄酒“双反”调查 <span class="date">6月20日</span></li>
          <li>李克强：中国进入中等收入阶段 <span class="date">6月20日</span></li>
          <li>全国高考人数连续5年下降 今年仅912万 专题 <span class="date">6月20日</span></li>
          <li>河南商丘女警探亲疑被郑州警方当卖淫女抓扣 <span class="date">6月20日</span></li>
        </ol>
      </div>
    </div>
    <div class="main-body clearfix">
      <h3 class="mod-title title-orange">出境旅游 <a href="" class="more">更多出境产品</a></h3>
      <div class="promote-product">
        <h4 class="mod-inner-title">促销产品</h4>
        <#assign promote_product_item>
        <ol>
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
        </ol>
        </#assign>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
      </div>
      <div class="promote-product">
        <h4 class="mod-inner-title">最新上架</h4>
        <#assign promote_product_item>
          <ol>
            <li>
              <div>
                <span class="label label-success">跟团游</span>
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
          </ol>
        </#assign>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
      </div>
    </div>
    <div class="main-body clearfix">
      <h3 class="mod-title title-green">国内旅游 <a href="" class="more">更多国内产品</a></h3>
      <div class="promote-product">
        <h4 class="mod-inner-title">促销产品</h4>
        <#assign promote_product_item>
        <ol>
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
        </ol>
        </#assign>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
      </div>
      <div class="promote-product">
        <h4 class="mod-inner-title">最新上架</h4>
        <#assign promote_product_item>
          <ol>
            <li>
              <div>
                <span class="label label-success">跟团游</span>
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
          </ol>
        </#assign>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
        <#noescape>${promote_product_item}</#noescape>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
