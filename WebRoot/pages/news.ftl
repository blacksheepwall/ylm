<#-- 系统公告页 -->
<#assign page_name="news"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="系统公告">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li class="active">系统公告列表</li>
        </ul>
        <div class="form-horizontal pull-right">
          <input class="search-input" type="text" placeholder="公告名称、标签">
          <button class="btn btn-success" type="button"><i class="icon-search"></i> 搜索</button>
        </div>
      </div>
      <div class="news-list">
        <table class="table table-bordered">
          <thead>
          <tr>
            <th>
              序号
            </th>
            <th>
              公告标题
            </th>
            <th>
              附件
            </th>
            <th>
              标签
            </th>
            <th>
              有效期
            </th>
            <th>
              发布时间
            </th>
          </tr>
          </thead>
          <tbody>
          <tr>
            <td>
              1
            </td>
            <td>
              <a href="/main/news-detail/">6月港澳散拼计划</a>
            </td>
            <td>
              <a href="">附件名称</a>
            </td>
            <td>
              港澳、散拼计划
            </td>
            <td>
              2013-07-01
            </td>
            <td>
              2013-07-01
            </td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
