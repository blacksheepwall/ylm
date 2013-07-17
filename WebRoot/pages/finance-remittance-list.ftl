<#-- 汇款列表页 -->
<#assign page_name="finance-remittance-list"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="汇款列表">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/finance/">财务结算</a> <span class="divider">/</span></li>
          <li class="active">汇款列表</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="form-horizontal mod-body">
            <div class="condition">
              <strong>汇款日期：</strong><input type="text" class="date-box input-small" readonly="">~<input type="text" class="date-box input-small" readonly="">
            </div>
            <div class="condition">
              <strong>汇款单号：</strong><input type="text" class="input-small">
              <strong>状态：</strong>
              <select class="input-small">
                <option selected="" value="所有">所有</option>
                <option value="未核销">未核销</option>
                <option value="已核销">已核销</option>
                <option value="已取消">已取消</option>
              </select>
            </div>
            <div class="condition">
              <button class="btn btn-success search-btn" type="button"><i class="icon-search"></i> 查找</button>
            </div>
          </div>
          <div class="mod-body">
            <h4 class="mod-title">汇款列表</h4>
            <table class="table table-bordered">
              <thead>
              <tr>
                <th>
                  汇款单号
                </th>
                <th>
                  金额
                </th>
                <th>
                  汇款日期
                </th>
                <th>
                  登记日期
                </th>
                <th>
                  状态
                </th>
                <th>
                  操作
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  <a href="/main/finance-remittance" target="_blank">YSL13042410560353</a>
                </td>
                <td></td>
                <td>
                  2013-05-03
                </td>
                <td>
                  2013-03-11
                </td>
                <td>
                </td>
                <td>
                  修改  删除
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
