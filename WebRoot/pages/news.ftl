<#-- 系统公告页 -->
<#assign page_name="main"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="系统公告">
    <@body class="main-page">
    <div class="container-fluid">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main.do">首页</a> <span class="divider">/</span></li>
          <li class="active">系统公告列表</li>
        </ul>
        <form class="form-search pull-right">
          <input type="text" class="input-xxlarge search-query">
          <button type="submit" class="btn">搜索</button>
        </form>
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
                01/04/2012
              </td>
              <td>
                Default
              </td>
              <td>
                Default
              </td>
              <td>
                Default
              </td>
            </tr>
            <tr>
              <td>
                1
              </td>
              <td>
                TB - Monthly
              </td>
              <td>
                01/04/2012
              </td>
              <td>
                Default
              </td>
              <td>
                Default
              </td>
              <td>
                Default
              </td>
            </tr>
            </tbody>
          </table>
        </div>
      </div>
    </@body>
  </@html>
</#escape>
