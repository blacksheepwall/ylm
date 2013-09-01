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
            <th width="60">
              序号
            </th>
            <th>
              公告标题
            </th>
            <th width="100">
              附件
            </th>
            <th width="100">
              标签
            </th>
            <th width="80">
              有效期
            </th>
            <th width="80">
              发布时间
            </th>
          </tr>
          </thead>
          <tbody>
          <#list result.resultList as it>
          <tr>
            <td>
              1
            </td>
            <td>
              <a href="/bulletin/info/?id=${it.id}">${it.title}</a>
            </td>
            <td>
              <#if it.attachName??><a href="${it.attachPath}">${it.attachName}</a></#if>
            </td>
            <td>
              ${it.lable}
            </td>
            <td>
              <#if it.effectiveDate??>${it.effectiveDate?string('yyyy-MM-dd')}</#if>
            </td>
            <td>
              <#if it.createDate??>${it.createDate?string('yyyy-MM-dd')}</#if>
            </td>
          </tr>
          </#list>
          </tbody>
        </table>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
