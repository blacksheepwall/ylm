<#-- 退款查看页 -->
<#assign page_name="finance-refund"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="退款查看">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/finance/">财务结算</a> <span class="divider">/</span></li>
          <li><a href="/main/finance-refund-list/">退款列表</a> <span class="divider">/</span></li>
          <li class="active">退款查看</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="mod-body">
            <h5 class="mod-title">退款查看</h5>
            <ul class="refund-info clearfix">
              <li><strong>退款单号：</strong> YSL13042410560353</li>
              <li><strong>业务类型：</strong> 订单退款</li>
              <li><strong>状态：</strong> 待财务审核</li>
              <li><strong>订单编号：</strong> <a href="/order/info/?id=12345678">YSL13050310010390</a></li>
              <li><strong>产品名称：</strong> <a href="/product/detail?id=1">【双城春色】石家庄-北京双飞六日游</a></li>
              <li><strong>预订人数：</strong> 3大1小</li>
              <li><strong>结算金额：</strong> 1000.00</li>
              <li><strong>已付款：</strong> 1000.00</li>
              <li><strong>退款金额：</strong> 1000.00</li>
              <li><strong>退款方式：</strong> 汇款</li>
              <li><strong>汇入账号：</strong> 1000.00</li>
              <li><strong>账户名称：</strong> 1000.00</li>
              <li><strong>开户银行：</strong> 1000.00</li>
              <li><strong>汇款说明：</strong> </li>
              <li><strong>提交人：</strong> 曾俊</li>
              <li><strong>提交时间：</strong> 2013.07.03</li>
            </ul>
            <h5 class="mod-title refund-detail">付款明细</h5>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  付款日期
                </th>
                <th>
                  付款流水号
                </th>
                <th>
                  付款金额
                </th>
                <th>
                  付款方式
                </th>
                <th>
                  付款说明
                </th>
                <th>
                  附件
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  2013-07-03 22:25:56
                </td>
                <td>
                </td>
                <td>
                  2000
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
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
