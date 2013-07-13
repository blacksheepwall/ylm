<#-- 自由行 -->
<#assign page_name="free-travel"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="自由行">
    <@body>
    <div class="free-travel main-body clearfix">
      <div>
        <ul id="J_condition" class="mod-body conditions mod-condition form-horizontal">
          <li class="con-row">
            <strong>关键字：</strong>
            <input class="search-input" type="text" placeholder="线路名称、途径城市、游览景点">
            <button class="btn btn-success" type="button"><i class="icon-search"></i> 搜索</button>
          </li>
          <li class="con-row clearfix">
            <div class="top-search pull-left form-horizontal">
              <strong>出发日期：</strong>
              <input type="text" readonly class="input-small date-box"><strong> ~ </strong><input type="text" readonly class="input-small date-box">
            </div>
          </li>
          <li class="con-row clearfix">
            <strong class="pull-left">出境线路：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
              </li>
              <#--<#list startCitys as st><li><a href="#">${st.cityName}</a></li></#list>-->
            </ul>
          </li>
          <li class="con-row clearfix">
            <strong class="pull-left">国内线路：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
              </li>
              <#--<#list prices as prc><li><a href="#">${prc.stringValue}</a></li></#list>-->
            </ul>
          </li>
          <li class="con-row clearfix">
            <strong class="pull-left">出发口岸（地）：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
              </li>
              <#--<#list traffics as tr><li><a href="#">${tr.stringValue}</a></li></#list>-->
            </ul>
          </li>
          <li class="con-row clearfix">
            <strong class="pull-left">类型：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
              </li>
              <#--<#list traffics as tr><li><a href="#">${tr.stringValue}</a></li></#list>-->
            </ul>
          </li>
        </ul>
        <div id="J_tab_content">
          <div>
            <ul id="J_product_list">
              <#assign product_item>
              <li>
                <div class="product" style="display: block;">
                  <div class="clearfix">
                    <div class="product-main">
                      <div>
                        <span class="label label-success">【机票+酒店】</span>
                        <a class="title" href="/product/detail?id=1"><strong>香港常规双园3晚4天亲子自由行</strong></a>
                        <span class="text-warning">香港航空，包含迪士尼1日门票，海洋公园1日门票</span>
                        <div class="muted">直航往返，轻松便捷、全程5星标准酒店（3晚入住五星酒店），全程舒适大床双标房、全程用餐自理，尽享香港美食天堂的魅力、自由活动，尽情享受购物乐趣</div>
                        <div>
                          天数：3晚4天
                          出发口岸(地)：杭州
                          主题：游乐园 蜜月 亲子 购物
                        </div>
                        <@product_date_list></@product_date_list>
                      </div>
                    </div>
                    <div class="product-more">
                      <div class="text-center">
                        <strong class="price-title">价格：</strong><span class="price-value">￥2500起</span>
                      </div>
                      <div class="text-center">
                        <span class="label label-warning">促销</span>
                        <span class="label label-warning">尾单</span>
                      </div>
                      <div class="show-detail text-center">
                        <a class="btn btn-success btn-small" href="">查看详情</a>
                      </div>
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
