<#-- 国内游、出境游 -->
<#assign page_name="outbound-travel"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="国内游、出境游">
    <@body>
    <div class="inland-body main-body clearfix">
      <div>
        <div class="route-body clearfix">
        <strong class="route-type">国内、出境线路：</strong>
        <ul class="route-list clearfix">
          <#list regions as rg>
          <#--${rg.name}-->
            <#list rg.citys as city>
              <li>
                <a href="">${city.cityName}</a>
              </li>
            </#list>
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
            <input type="text" readonly class="input-small date-box"><strong> ~ </strong><input type="text" readonly class="input-small date-box">
          </div>
          <div class="input-append pull-left">
            <input class="search-input" type="text" placeholder="产品名称、站点城市、游览景点">
            <button class="btn btn-success" type="button"><i class="icon-search"></i> 搜索</button>
            <button class="btn" type="button">高级查找</button>
          </div>
        </div>
        <div id="J_condition" class="mod-body condition mod-condition">
          <div class="con-row clearfix">
            <strong class="pull-left">出发城市：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
              </li>
              <li class="">
                <a href="leaveCity=330100">杭州</a>
              </li>
              <li class="">
                <a href="leaveCity=310000">上海</a>
              </li>
              <li class="">
                <a href="leaveCity=330200">宁波</a>
              </li>
              <li class="">
                <a href="leaveCity=330300">温州</a>
              </li>
              <li class="">
                <a href="leaveCity=320100">南京</a>
              </li>
              <li class="">
                <a href="leaveCity=331000">台州</a>
              </li>
              <#--<#list startCitys as st><li><a href="#">${st.cityName}</a></li></#list>-->
            </ul>
          </div>
          <div class="con-row clearfix">
            <strong class="pull-left">天数：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
              </li>
              <li class="">
                <a href="dateRange=1">1天</a>
              </li>
              <li class="">
                <a href="dateRange=2">2天</a>
              </li>
              <li class="">
                <a href="dateRange=3">3天</a>
              </li>
              <li class="">
                <a href="dateRange=4">1-3天</a>
              </li>
              <li class="">
                <a href="dateRange=5">4-7天</a>
              </li>
              <li class="">
                <a href="dateRange=6">7天以上</a>
              </li>
              <#--<#list dates as dt><li><a href="#">${dt.stringValue}</a></li></#list>-->
            </ul>
          </div>
          <div class="con-row clearfix">
            <strong class="pull-left">价格：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
              </li>
              <li class="">
                <a href="priceRange=1">800以下</a>
              </li>
              <li class="">
                <a href="priceRange=2">800-1500</a>
              </li>
              <li class="">
                <a href="priceRange=3">1500-3000</a>
              </li>
              <li class="">
                <a href="priceRange=4">3000以上</a>
              </li>
              <#--<#list prices as prc><li><a href="#">${prc.stringValue}</a></li></#list>-->
            </ul>
          </div>
          <div class="con-row clearfix">
            <strong class="pull-left">交通：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
              </li>
              <li class="">
                <a href="traffic=FOOT">步行</a>
              </li>
              <li class="">
                <a href="traffic=AIRPLANE">飞机</a>
              </li>
              <li class="">
                <a href="traffic=TRAIN">火车</a>
              </li>
              <li class="">
                <a href="traffic=BUS">汽车</a>
              </li>
              <li class="">
                <a href="traffic=SHIP">轮船</a>
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
            <a href="#"><i class="icon-arrow-up"></i> 出发日期</a>
            <a href="#"><i class="icon-arrow-up"></i> 最低价格</a>
          </div>
        </div>
        <div id="J_tab_content">
          <div>
            <ul id="J_product_list">
              <#list result.resultList as it>
              <li>
                <div class="product clearfix" style="display: block;">
                  <div class="product-main">
                    <div>
                      <span class="label label-success">特价</span>
                      <a class="title" href="/product/detail?id=${it.productId}" target="_blank"><strong>${it.title}</strong></a>
                      <span class="text-warning">${it.nightCount}晚${it.dayCount}天</span>
                      <div class="muted">${it.managerRecommend}</div>
                      <@product_date_list></@product_date_list>
                    </div>
                  </div>
                  <div class="product-more">
                    <div class="text-center">
                      <span class="label label-info">蜜月</span>
                      <span class="label label-info">亲子</span>
                      <span class="label label-info">度假</span>
                      <div>${it.topic}</div>
                    </div>
                    <div class="product-price">
                      <strong class="price-title">价格：</strong><span class="price-value">￥${it.price}起</span>
                    </div>
                  </div>
                </div>
              </li>
              </#list>
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
                <th>
                  日期
                </th>
                <th>
                  成团
                </th>
                <th>
                  门市价格
                </th>
                <th>
                  结算价格
                </th>
                <th>
                  剩余
                </th>
                <th>
                  预订
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  <a href="/product/detail?id=1" target="_blank">海南三亚双飞5日游YGNHD039PS130408A<尾单></a>
                </td>
                <td>
                  04-08
                </td>
                <td>
                  已成团
                </td>
                <td>
                  6889.00
                </td>
                <td>
                </td>
                <td>
                  20
                </td>
                <td>
                  <a href="/product/detail?id=1" target="_blank">预订</a>
                </td>
              </tr>
              </tbody>
            </table>
            <@pagination></@pagination>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
