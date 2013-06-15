<#-- 我的收藏页 -->
<#assign page_name="user-center-favorite"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="我的收藏">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/user-center/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">我的收藏</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="mod-body clearfix">
            <h3 class="mod-title">收藏列表</h3>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  产品名称
                </th>
                <th>
                  类型
                </th>
                <th>
                  天数
                </th>
                <th>
                  价格
                </th>
                <th>
                  出团日期
                </th>
                <th>
                  取消收藏
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  <a href="/main/product/">【双城春色】石家庄-北京双飞六日游</a>
                </td>
                <td>
                  跟团游
                </td>
                <td>
                  5晚4天
                </td>
                <td>
                  3888.00起
                </td>
                <td>
                  2013-6-12、6-18、6-22、7-3
                </td>
                <td>
                  <a href="">取消收藏</a>
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
