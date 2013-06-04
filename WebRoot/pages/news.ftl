<#-- 系统公告页 -->
<#assign page_name="news"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="系统公告">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main.do">首页</a> <span class="divider">/</span></li>
          <li class="active">系统公告列表</li>
        </ul>
        <div class="input-append pull-right">
          <input class="input-xxlarge" type="text">
          <button class="btn" type="button">搜索</button>
        </div>
      </div>
      <div class="row-fluid">
        <div class="span12">
          <table class="table table-hover table-bordered">
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
                <a href="/main/news-detail.do">6月港澳散拼计划</a>
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
    </div>
    </@body>
  </@html>
</#escape>
