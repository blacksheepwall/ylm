<#-- 年、月报表页 -->
<#assign page_name="finance-report"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="年报表">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/finance/">财务结算</a> <span class="divider">/</span></li>
          <li class="active">年报表</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="mod-body">
            <div class="condition form-horizontal">
              年份
              <select class="input-small">
                <option selected="" value="2013">2013</option>
                <option value="2013">2013</option>
                <option value="2014">2014</option>
                <option value="2015">2015</option>
                <option value="2016">2016</option>
                <option value="2017">2017</option>
              </select>
              <button class="btn btn-success btn-small" type="button"><i class="icon-search"></i> 确定</button>
              <button class="btn btn-small" type="button"><i class="icon-download"></i> 下载报表</button>
            </div>
            <table class="table table-bordered">
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
                  订单金额
                </th>
                <th>
                  结算金额
                </th>
                <th>
                  查看
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                  <a href="/main/finance-year-report">查看</a>
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
