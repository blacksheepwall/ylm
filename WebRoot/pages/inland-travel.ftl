<#-- 跟团游 国内线路 -->
<#assign page_name="inland-travel"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="国内线路">
    <@body>
    <div class="main-body clearfix">
      <div class="sidebar pull-left">
        <@inland_travel_module></@inland_travel_module>
      </div>
      <div class="center pull-left">
        <div class="clearfix">
          <div class="pull-left">
            出发日期 <input type="text" readonly class="input-small"> 至 <input type="text" readonly class="input-small">
          </div>
          <div class="input-append pull-left">
            <input class="span2" type="text">
            <button class="btn" type="button">搜索</button>
            <button class="btn" type="button">高级查找</button>
          </div>
        </div>
        <div class="conditions">
          <div class="control-group">出发城市： <span class="label label-info">不限</span> 杭州 上海 宁波 南京 温州 台州</div>
          <div class="control-group">天数：<span class="label label-info">不限</span> 1天 2天 3天 1-3天 4-7天 7天以上</div>
          <div class="control-group">价格：<span class="label label-info">不限</span> 800以下 800-1500 1500-3000 3000-5000 5000以上</div>
          <div class="control-group"class="control-group">交通：<span class="label label-info">不限</span> 汽车 火车 轮船 飞机</div>
        </div>
        <div>
          <ul class="nav nav-tabs">
            <li class="active">
              <a href="#">计划首页</a>
            </li>
            <li><a href="#">团队查看</a></li>
            <li><a href="#">出发日期</a></li>
            <li><a href="#">最低价格</a></li>
          </ul>
        </div>
        <div>
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
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
