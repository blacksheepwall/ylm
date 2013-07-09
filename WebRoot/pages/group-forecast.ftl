<#-- 整团预报 -->
<#assign page_name="group-forecast"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="整团预报">
    <@body>
    <div class="inland-body main-body clearfix">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/group-tour">整团业务</a> <span class="divider">/</span></li>
          <li class="active">整团预报</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@group_tour_sidebar></@group_tour_sidebar>
        <div class="span10">
          <@group_tour_condition></@group_tour_condition>
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
    </div>
    </@body>
  </@html>
</#escape>
