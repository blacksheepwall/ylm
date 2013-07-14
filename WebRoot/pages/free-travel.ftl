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
              <#noescape><@product_item_type1></@product_item_type1></#noescape>
              <#noescape><@product_item_type1></@product_item_type1></#noescape>
              <#noescape><@product_item_type1></@product_item_type1></#noescape>
              <#noescape><@product_item_type1></@product_item_type1></#noescape>
              <#noescape><@product_item_type1></@product_item_type1></#noescape>
            </ul>
            <@pagination></@pagination>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
