<#-- 国内游、出境游 -->
<#assign page_name="${productType}"/>
<#if productType=="guoneiyou">
  <#assign title="国内游">
<#else>
  <#assign title="出境游">
</#if>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="${title}">
    <@body>
    <div class="inland-body main-body clearfix">
      <div>
        <div class="route-body clearfix">
        <strong class="route-type">${title}线路：</strong>
        <ul class="route-list clearfix">
          <#--${rg.name}-->
          <#list citys as city>
            <li>
              <a href="typeCode=${city.typeCode!}">${city.productTypeName}</a>
            </li>
          </#list>
        </ul>
      </div>
        <div class="clearfix">
          <div class="top-search pull-left form-horizontal">
            <strong>线路分类：</strong>
            <select>
              <option value="所有">所有</option>
              <option selected="" value="海南三亚">海南三亚</option>
              <option value="云南贵州">云南贵州</option>
              <option value="云南贵州">云南贵州</option>
              <option value="云南贵州">云南贵州</option>
              <option value="云南贵州">云南贵州</option>
              <option value="云南贵州">云南贵州</option>
              <option value="云南贵州">云南贵州</option>
            </select>
            <strong>出发日期：</strong>
            <input id="J_start_date" type="text" readonly class="input-small date-box"><strong> ~ </strong><input id="J_end_date" type="text" readonly class="input-small date-box">
          </div>
          <div class="input-append pull-left">
            <input id="J_search_text" class="search-input" type="text" placeholder="产品名称、站点城市、游览景点">
            <button id="J_search_btn" class="btn btn-success" type="button"><i class="icon-search"></i> 搜索</button>
            <#--<button class="btn" type="button">高级查找</button>-->
          </div>
        </div>
        <div id="J_condition" class="mod-body condition mod-condition">
          <div class="con-row clearfix">
            <strong class="pull-left">出发城市：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="javascript:;">不限</a>
              </li>
              <li>
                <a href="javascript:;" data-target="leaveCity,330100">杭州</a>
              </li>
              <li>
                <a href="javascript:;" data-target="leaveCity,310000">上海</a>
              </li>
              <li>
                <a href="javascript:;" data-target="leaveCity,330200">宁波</a>
              </li>
              <li>
                <a href="javascript:;" data-target="leaveCity,330300">温州</a>
              </li>
              <li>
                <a href="javascript:;" data-target="leaveCity,320100">南京</a>
              </li>
              <li>
                <a href="javascript:;" data-target="leaveCity,331000">台州</a>
              </li>
              <#--<#list startCitys as st><li><a href="#">${st.cityName}</a></li></#list>-->
            </ul>
          </div>
          <div class="con-row clearfix">
            <strong class="pull-left">天数：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="javascript:;" data-target="dateRange">不限</a>
              </li>
              <li>
                <a href="javascript:;" data-target="dateRange,1">1天</a>
              </li>
              <li>
                <a href="javascript:;" data-target="dateRange,2">2天</a>
              </li>
              <li>
                <a href="javascript:;" data-target="dateRange,3">3天</a>
              </li>
              <li>
                <a href="javascript:;" data-target="dateRange,4">1-3天</a>
              </li>
              <li>
                <a href="javascript:;" data-target="dateRange,5">4-7天</a>
              </li>
              <li>
                <a href="javascript:;" data-target="dateRange,6">7天以上</a>
              </li>
              <#--<#list dates as dt><li><a href="#">${dt.stringValue}</a></li></#list>-->
            </ul>
          </div>
          <div class="con-row clearfix">
            <strong class="pull-left">价格：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="javascript:;" data-target="priceRange">不限</a>
              </li>
              <li>
                <a href="javascript:;" data-target="priceRange,1">800以下</a>
              </li>
              <li>
                <a href="javascript:;" data-target="priceRange,2">800-1500</a>
              </li>
              <li>
                <a href="javascript:;" data-target="priceRange,3">1500-3000</a>
              </li>
              <li>
                <a href="javascript:;" data-target="priceRange,4">3000以上</a>
              </li>
              <#--<#list prices as prc><li><a href="#">${prc.stringValue}</a></li></#list>-->
            </ul>
          </div>
          <div class="con-row clearfix">
            <strong class="pull-left">交通：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="javascript:;" data-target="traffic">不限</a>
              </li>
              <li>
                <a href="javascript:;" data-target="traffic,FOOT">步行</a>
              </li>
              <li>
                <a href="javascript:;" data-target="traffic,AIRPLANE">飞机</a>
              </li>
              <li>
                <a href="javascript:;" data-target="traffic,TRAIN">火车</a>
              </li>
              <li>
                <a href="javascript:;" data-target="traffic,BUS">汽车</a>
              </li>
              <li>
                <a href="javascript:;" data-target="traffic,SHIP">轮船</a>
              </li>
              <#--<#list traffics as tr><li><a href="#">${tr.stringValue}</a></li></#list>-->
            </ul>
          </div>
        </div>
        <div class="nav-con">
          <ul id="J_tab" class="nav nav-tabs">
            <li class="active">
              <a href="#"><i class="icon-calendar"></i> 计划查看</a>
            </li>
            <li><a href="#"><i class="icon-group"></i> 团队查看</a></li>
          </ul>
          <div id="J_sort" class="col-sort">
            <a href="javascript:;" data-by="startDateOrder" data-desc=""><i></i> 出发日期</a>
            <a href="javascript:;" data-by="priceOrder" data-desc=""><i></i> 最低价格</a>
          </div>
        </div>
        <div id="J_tab_content">
          <div>
            <ul id="J_product_list">
              <#--<#list result.resultList as it>-->
              <#--<li>-->
                <#--<div class="product clearfix" style="display: block;">-->
                  <#--<div class="product-main">-->
                    <#--<div>-->
                      <#--<span class="label label-success">特价</span>-->
                      <#--<a class="title" href="/product/detail?id={{productId}" target="_blank"><strong>{{title}</strong></a>-->
                      <#--<span class="text-warning">{{nightCount}晚{{dayCount}天</span>-->
                      <#--<div class="muted">{{managerRecommend}</div>-->
                      <#--<@product_date_list></@product_date_list>-->
                    <#--</div>-->
                  <#--</div>-->
                  <#--<div class="product-more">-->
                    <#--<div class="text-center">-->
                      <#--<span class="label label-info">蜜月</span>-->
                      <#--<span class="label label-info">亲子</span>-->
                      <#--<span class="label label-info">度假</span>-->
                      <#--<div>{{topic}</div>-->
                    <#--</div>-->
                    <#--<div class="product-price">-->
                      <#--<strong class="price-title">价格：</strong><span class="price-value">￥{{price}起</span>-->
                    <#--</div>-->
                  <#--</div>-->
                <#--</div>-->
              <#--</li>-->
              <#--</#list>-->
            </ul>
            <@pagination></@pagination>
          </div>
          <div style="display: none;">
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  产品
                </th>
                <th width="100">
                  日期
                </th>
                <th width="100">
                  成团
                </th>
                <th width="120">
                  门市价格
                </th>
                <th width="100">
                  结算价格
                </th>
                <th width="80">
                  剩余
                </th>
                <th width="80">
                  预订
                </th>
              </tr>
              </thead>
              <tbody id="J_group_list"></tbody>
            </table>
            <@pagination></@pagination>
          </div>
        </div>
      </div>
    </div>
    <script>
      productType = "${productType!''}";
    </script>
    <script id="J_product_row" type="text/tpl">
      {{#each this}}
      <li>
        <div class="product clearfix">
          <div class="product-main">
            <div>
              <span class="label label-success">特价</span>
              <a class="title" href="/product/detail?id={{productId}}" target="_blank"><strong>{{title}}</strong></a>
              <span class="text-warning">{{nightCount}}晚{{dayCount}}天</span>
              <div class="muted">{{managerRecommend}}</div>
              <@product_date_list></@product_date_list>
            </div>
          </div>
          <div class="product-more">
            <div class="text-center">
              <span>{{topic}}</span>
            </div>
            <div class="product-price">
              <strong class="price-title">价格：</strong><span class="price-value">￥{{price}}起</span>
            </div>
          </div>
        </div>
      </li>
      {{/each}}
      {{^each this}}
        <li>没有数据</li>
      {{/each}}
    </script>
    <script id="J_group_row" type="text/tpl">
      {{#each this}}
      <tr>
        <td>
          <a href="/product/detail?id={{id}}" target="_blank">{{name}}</a>
        </td>
        <td>
          {{dateRenderer date}}
        </td>
        <td>
          {{isGrouped}}
        </td>
        <td>
          <div class="price-more">
            {{price}} <a class="j-price" href="javascript:;">更多</a>
            <div class="popover bottom" style="display: none;">
              <div class="arrow"></div>
              <div class="popover-content">
                <table class="table table-striped table-condensed">
                  <thead>
                  <th>价格名称</th>
                  <th>包含人数</th>
                  <th>门市价格</th>
                  <th>结算价格</th>
                  <th>订金</th>
                  <th>价格说明</th>
                  </thead>
                  <tbody>
                  <tr>
                    <td>成人价</td>
                    <td>2800.00</td>
                    <td>2600.00</td>
                    <td>2000.00</td>
                    <td></td>
                    <td></td>
                  </tr>
                  </tbody>
                </table>
              </div>
              <#--<div class="popover-action">-->
                <#--<a href="javascript:;" class="btn btn-small j-close">关闭</a>-->
              <#--</div>-->
            </div>
          </div>
        </td>
        <td>
          {{settlePrice}}
        </td>
        <td>
          {{remainCount}}
        </td>
        <td>
          <a href="/product/detail?id={{id}}" target="_blank">预订</a>
        </td>
      </tr>
      {{/each}}
      {{^each this}}
      <tr><td colspan="7">没有数据</td></tr>
      {{/each}}
    </script>
    </@body>
  </@html>
</#escape>
