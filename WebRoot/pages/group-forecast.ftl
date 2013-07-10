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
          <table class="table table-hover table-bordered">
            <thead>
            <tr>
              <th>
                线路名称
              </th>
              <th>
                旅游天数
              </th>
              <th>
                出发口岸
              </th>
              <th>
                往返交通
              </th>
              <th>
                参考报价
              </th>
              <th>
                标准人数
              </th>
              <th>
                预报有效期
              </th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>
                <a href="/main/group-forecast-view">海南三亚双飞5日游YGNHD039PS130408A<尾单></a>
              </td>
              <td>
                2
              </td>
              <td>
                杭州
              </td>
              <td>
                汽车
              </td>
              <td>
                1000.00
              </td>
              <td>
                20
              </td>
              <td>
              </td>
            </tr>
            </tbody>
          </table>
          <@pagination></@pagination>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
