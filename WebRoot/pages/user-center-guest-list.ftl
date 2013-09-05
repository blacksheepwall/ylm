<#-- 游客名单页 -->
<#assign page_name="user-center-guest-list"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="游客名单">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">游客名单</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="mod-body clearfix">
            <div class="pull-left condition">
              游客姓名 <input id="J_name" type="text" class="input-small"> <button id="J_search_btn" class="btn btn-success search-btn" type="button">查找</button>
            </div>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th width="60">
                  序号
                </th>
                <th width="60">
                  姓名
                </th>
                <th width="60">
                  性别
                </th>
                <th width="120">
                  证件号码
                </th>
                <th width="80">
                  联系电话
                </th>
                <th width="80">
                  订单编号
                </th>
                <th>
                  预订产品名称
                </th>
                <th width="80">
                  状态
                </th>
              </tr>
              </thead>
              <tbody>
              <#list custList.resultList as it>
              <tr>
                <td>
                  ${it_index+1}
                </td>
                <td>
                  ${it.name}
                </td>
                <td>
                  ${it.sex}
                </td>
                <td>
                  ${it.certificate.certificateNumber}
                </td>
                <td>
               	  ${it.mobile}
                </td>
                <td>
                  <a href="">${it.orderNum}</a>
                </td>
                <td>
                  <a href="/product/detail/">${it.productName}</a>
                </td>
                <td>
                  有效
                </td>
              </tr>
              </#list>
              <#if custList??&&custList.resultList?size==0>
              <tr>
                <td colspan="8">还没有数据</td>
              </tr>
              </#if>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
