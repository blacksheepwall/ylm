<#-- 旅游线路 -->
<#assign page_name="group-route"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="旅游线路">
    <@body>
    <div class="main-body clearfix">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/group-tour">整团业务</a> <span class="divider">/</span></li>
          <li class="active">旅游线路</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@group_tour_sidebar></@group_tour_sidebar>
        <div class="span10 form-horizontal">
          <@group_tour_condition></@group_tour_condition>
          <div class="content">
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  序号
                </th>
                <th>
                  线路名称
                </th>
                <th>
                  线路分类
                </th>
                <th>
                  天数
                </th>
                <th>
                  出发口岸
                </th>
                <th>
                  往返交通
                </th>
                <th>
                  最近更新
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                </td>
                <td>
                  <a href="/main/group-team-view" target="_blank">海南双飞4晚5日团队游</a>
                </td>
                <td>
                  国内线路-海南三亚
                </td>
                <td>
                  4晚5天
                </td>
                <td>
                  杭州
                </td>
                <td>
                  飞机/飞机
                </td>
                <td>
                  18人
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
