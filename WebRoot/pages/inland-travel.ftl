<#-- 跟团游 国内线路 -->
<#assign page_name="inland-travel"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="国内线路">
    <@body>
    <div class="main-body clearfix">
      <#--<div class="sidebar pull-left">-->
        <#--<@inland_travel_module></@inland_travel_module>-->
      <#--</div>-->
      <div>
        <div class="clearfix">
          <div class="top-search pull-left">
            出发日期 <input type="text" readonly class="input-small date-box"> 至 <input type="text" readonly class="input-small date-box">
          </div>
          <div class="input-append pull-left">
            <input class="search-input" type="text">
            <button class="btn" type="button">搜索</button>
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
              <#list startCitys as st><li><a href="#">${st.cityName}</a></li></#list>
            </ul>
          </div>
          <div class="con-row clearfix">
            <strong class="pull-left">天数：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
              </li>
              <#list dates as dt><li><a href="#">${dt.stringValue}</a></li></#list>
            </ul>
          </div>
          <div class="con-row clearfix">
            <strong class="pull-left">价格：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
              </li>
              <#list prices as prc><li><a href="#">${prc.stringValue}</a></li></#list>
            </ul>
          </div>
          <div class="con-row clearfix">
            <strong class="pull-left">交通：</strong>
            <ul class="nav nav-pills">
              <li class="active">
                <a href="#">不限</a>
              </li>
              <#list traffics as tr><li><a href="#">${tr.stringValue}</a></li></#list>
            </ul>
          </div>
        </div>
        <div>
          <ul class="nav nav-tabs">
            <li class="active">
              <a href="#">计划查看</a>
            </li>
            <li><a href="#">团队查看</a></li>
            <li><a href="#">出发日期</a></li>
            <li><a href="#">最低价格</a></li>
          </ul>
        </div>
        <div>
          <div>
            <div class="clearfix">
              <div class="pull-left">
                <div>
                  <span class="label label-info">产品标签</span>
                  <a href="/product/detail/">东航直飞巴厘岛5晚6日至尊逍遥之旅</a>
                  <span>4晚5天</span>
                  <span class="label label-warning">国内线路-三亚海南</span>
                </div>
                <div class="muted">国航直飞 -------产品副标题</div>
              </div>
              <div class="pull-right">
                <span class="label label-success">蜜月 亲子 度假</span>
                <div>线路主题</div>
              </div>
            </div>
            <div class="row-fluid">国际5*酒店+国际5*独栋泳池别墅+蓝钻岛 -----产品经理推荐</div>
            <div>
              <div class="pull-left">产品日期 2013.06.05 <a href="">2013.06.05</a> 2013.06.05 <a href="">更多</a></div>
              <div class="pull-right">价格：3998.00起</div>
            </div>
          </div>
          <table class="table table-hover table-bordered">
            <thead>
            <tr>
              <th>
                团号
              </th>
              <th>
                成团
              </th>
              <th>
                线路名称
              </th>
              <th>
                日期
              </th>
              <th>
                标准价格
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
                <a href="">YGNHD039PS130408A</a>
              </td>
              <td>
                已成团
              </td>
              <td>
                【产品标签】夏威夷4晚6天
              </td>
              <td>
                04-08
              </td>
              <td>
                6889.00 <a href="">更多</a>
              </td>
              <td>
                >9
              </td>
              <td>
                <a href="">预订</a>
              </td>
            </tr>
            <tr>
              <td>
                <a href="">YGNHD039PS130408A</a>
              </td>
              <td>
                已成团
              </td>
              <td>
                【产品标签】夏威夷4晚6天
              </td>
              <td>
                04-08
              </td>
              <td>
                6889.00 <a href="">更多</a>
              </td>
              <td>
                >9
              </td>
              <td>
                <a href="">预订</a>
              </td>
            </tr>
            </tbody>
          </table>
          <@mock_pagination></@mock_pagination>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
