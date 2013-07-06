<#-- 出境游 -->
<#assign page_name="outbound-travel"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="出境游">
    <@body>
    <div class="inland-body main-body clearfix">
      <div class="sidebar pull-left">
        <#--<@inland_travel_module></@inland_travel_module>-->
      </div>
      <div class="center pull-left">
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
            <input type="text" readonly class="input-small date-box"><strong> 至 </strong><input type="text" readonly class="input-small date-box">
          </div>
          <div class="input-append pull-left">
            <input class="search-input" type="text">
            <button class="btn btn-success" type="button"><i class="icon-search"></i> 搜索</button>
            <button class="btn" type="button">高级查找</button>
          </div>
        </div>
        <div id="J_condition" class="mod-body conditions mod-condition">
          <div class="con-row clearfix">
            <strong class="pull-left">出发城市：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
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
              <#--<#list dates as dt><li><a href="#">${dt.stringValue}</a></li></#list>-->
            </ul>
          </div>
          <div class="con-row clearfix">
            <strong class="pull-left">价格：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
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
              <#assign product_item>
              <li>
                <div class="product" style="display: block;">
                  <div class="clearfix">
                    <div class="pull-left">
                      <div>
                        <span class="label label-success">特价</span>
                        <a class="title" href="/product/detail?id=1"><strong>东航直飞巴厘岛5晚6日至尊逍遥之旅</strong></a>
                        <span>4晚5天</span>
                        <span class="label label-warning">国内线路-三亚海南</span>
                      </div>
                      <div class="muted">带您玩最美的黄山，泡真正的黄山温泉。</div>
                    </div>
                    <div class="pull-right">
                      <span class="label label-info">蜜月 亲子 度假</span>
                      <div>线路主题</div>
                    </div>
                  </div>
                  <div class="row-fluid">国际5*酒店+国际5*独栋泳池别墅+蓝钻岛 -----产品经理推荐</div>
                  <div class="clearfix">
                    <div class="pull-left">
                      <strong>产品日期：</strong>
                      <span>2013.06.05</span>
                      <span>2013.06.05</span>
                      <span>2013.06.05</span>
                      <a href="">更多</a></div>
                    <div class="pull-right">
                      <strong class="price-title">价格：</strong><span class="price-value">￥2500起</span>
                    </div>
                  </div>
                </div>
              </li>
              </#assign>
              <#noescape>${product_item}</#noescape>
              <#noescape>${product_item}</#noescape>
              <#noescape>${product_item}</#noescape>
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
