<#-- 整团团队 -->
<#assign page_name="group-team"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="整团团队">
    <@body>
    <div class="main-body clearfix">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/zhengtuan/">整团业务</a> <span class="divider">/</span></li>
          <li class="active">整团团队</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@group_tour_sidebar></@group_tour_sidebar>
        <div class="span10 form-horizontal">
          <div class="mod-condition">
            <strong>出发日期：</strong>
            <input type="text" readonly class="input-small date-box"><strong> ~ </strong><input type="text" readonly class="input-small date-box">
            <#--<strong class="keyword"> 关键字：</strong>-->
            <input class="search-input" type="text" placeholder="线路名称、途径城市、游览景点">
            <button class="btn search-btn btn-success" type="button"><i class="icon-search"></i> 搜索</button>
          </div>
          <div class="content">
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  团队编号
                </th>
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
                  出发日期
                </th>
                <th>
                  计划
                </th>
                <th>
                  实际
                </th>
                <th>
                  计调状态
                </th>
                <th>
                  拼团
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  <a href="/main/group-team-view" target="_blank">YGNHD039PS130408A</a>
                </td>
                <td>
                  夏威夷4晚6天
                </td>
                <td>
                  4晚6天
                </td>
                <td>
                  上海
                </td>
                <td>
                  2013-04-08
                </td>
                <td>
                  15人
                </td>
                <td>
                  18人
                </td>
                <td>
                  落实中
                </td>
                <td>
                  否
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
