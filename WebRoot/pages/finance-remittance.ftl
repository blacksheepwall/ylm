<#-- 汇款查看页 -->
<#assign page_name="finance-remittance"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="汇款查看">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/finance/">财务结算</a> <span class="divider">/</span></li>
          <li><a href="/main/finance-remittance-list/">汇款列表</a> <span class="divider">/</span></li>
          <li class="active">汇款查看</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="mod-body">
            <h5 class="mod-title">汇款信息</h5>
            <ul class="remittance-info clearfix">
              <li><strong>汇款单号：</strong> YSL13042410560353</li>
              <li><strong>汇款日期：</strong> 2013-05-15</li>
              <li><strong>汇款金额：</strong> 2000.00</li>
              <li><strong>汇款账号：</strong> 123465678</li>
              <li><strong>开户行：</strong> 中国银行</li>
              <li><strong>账户名称：</strong> 绍兴天马旅行社</li>
              <li><strong>汇款说明：</strong> </li>
              <li><strong>登记人：</strong> 曾俊</li>
              <li><strong>登记时间：</strong> 2013.07.03</li>
              <li><strong>状态：</strong> 已核销</li>
              <li><strong>附件：</strong> 1、汇款单回单附件</li>
            </ul>
          </div>
          <div class="mod-body">
            <h5 class="mod-title">付款内容</h5>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  收款单号
                </th>
                <th>
                  订单编号
                </th>
                <th>
                  产品名称
                </th>
                <th>
                  出团日期
                </th>
                <th>
                  人数
                </th>
                <th>
                  核销状态
                </th>
                <th>
                  本次付款
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  <a href="/main/finance-verification">YN1305150326</a>
                </td>
                <td>
                  <a href="/order/info/?id=12345678" target="_blank">YSL13050310010390</a>
                </td>
                <td>
                  <a href="/main/product?id=1">【双城春色】石家庄-北京双飞六日游</a>
                </td>
                <td>
                  2013-05-07
                </td>
                <td>
                  3大1小
                </td>
                <td>
                  3000.00
                </td>
                <td>
                  已收款
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
