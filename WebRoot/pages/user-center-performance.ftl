<#-- 业绩汇总页 -->
<#assign page_name="user-center-performance"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="业绩汇总">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">业绩汇总</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="mod-body clearfix">
            <div class="pull-left condition">
              起止日期 <input type="text" class="input-small"> 至 <input type="text" class="input-small">
              <button class="btn btn-success search-btn" type="button">确定</button>
            </div>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  线路类型
                </th>
                <th>
                  订单数量
                </th>
                <th>
                  人数
                </th>
                <th>
                  营业金额额
                </th>
                <th>
                  结算金额
                </th>
                <th>
                  明细查看
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  1
                </td>
                <td>
                  2
                </td>
                <td>
                  3
                </td>
                <td>
                  4
                </td>
                <td>
                  1
                </td>
                <td>
                  2
                </td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
