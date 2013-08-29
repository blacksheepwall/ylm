<#-- 订单核销信息 -->
<#assign page_name="finance-verification"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="订单核销信息">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/finance/">财务结算</a> <span class="divider">/</span></li>
          <li><a href="/finance/payment/">汇款列表</a> <span class="divider">/</span></li>
          <li><a href="/main/finance-remittance/">汇款查看</a> <span class="divider">/</span></li>
          <li class="active">订单核销信息</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="mod-body">
            <ul class="verification-info clearfix">
              <li><strong>收款单号：</strong> YSL13042410560353</li>
              <li><strong>状态：</strong> 已收款</li>
              <li><strong>业务类型：</strong> 2000.00</li>
              <li><strong>订单编号：</strong> 123465678</li>
              <li><strong>收款金额：</strong> 3999</li>
              <li><strong>收款方式：</strong> 汇款</li>
              <li><strong>提交人：</strong> 王五</li>
              <li><strong>提交时间：</strong> 2013-07-17</li>
              <li><strong>收款流水号：</strong> YR1305150308</li>
              <li><strong>收款金额：</strong> 2013-07-17</li>
              <li><strong>收款方式：</strong> 汇款</li>
              <li><strong>收款部门：</strong> 结算中心</li>
              <li><strong>收款人：</strong> 呵呵</li>
              <li><strong>操作时间：</strong> 2013-07-17 22:59:13</li>
              <li><strong>收款备注：</strong></li>
              <li><strong>票据：</strong> 曾俊</li>
            </ul>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  票据类型
                </th>
                <th>
                  票据抬头
                </th>
                <th>
                  票据号码
                </th>
                <th>
                  票据金额
                </th>
                <th>
                  附件
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  发票
                </td>
                <td>
                  发票
                </td>
                <td>
                  2013-05-07
                </td>
                <td>
                  3大1小
                </td>
                <td>
                  <a href=""><i class="icon-eye-open"></i> 查看 </a>
                  <a href=""><i class="icon-reply"></i> 回复 </a>
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
