<#-- 应付款明细页 -->
<#assign page_name="finance-payable-detail"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="应付款明细">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/finance/">财务结算</a> <span class="divider">/</span></li>
          <li class="active">应付款明细</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="form-horizontal mod-body">
            <div class="control-group">
              <span>线路类型</span>
              <select class="input-small">
                <option selected="" value="出境线路">出境线路</option>
                <option value="2013">2013</option>
                <option value="2014">2014</option>
                <option value="2015">2015</option>
                <option value="2016">2016</option>
                <option value="2017">2017</option>
              </select>
              <select class="input-small">
                <option selected="" value="东南亚">东南亚</option>
                <option value="1月">1月</option>
                <option value="2月">2月</option>
                <option value="3月">3月</option>
                <option value="4月">4月</option>
                <option value="5月">5月</option>
                <option value="6月">6月</option>
                <option value="7月">7月</option>
                <option value="8月">8月</option>
                <option value="9月">9月</option>
                <option value="10月">10月</option>
                <option value="11月">11月</option>
                <option value="12月">12月</option>
              </select>
              <button class="btn btn-primary btn-small">下载明细</button>
            </div>
            <table class="table table-bordered">
              <thead>
              <tr>
                <th>
                  订单编号
                </th>
                <th>
                  人数
                </th>
                <th>
                  产品信息
                </th>
                <th>
                  出发日期
                </th>
                <th>
                  订单金额
                </th>
                <th>
                  已付款
                </th>
                <th>
                  未付余款
                </th>
                <th>
                  账期
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  <a href="">YSL13042410560353</a>
                </td>
                <td>
                  3大1小
                </td>
                <td>
                  <a href="">东航直飞巴厘岛5晚6日至尊逍遥之旅</a>
                </td>
                <td>
                  2013-03-11
                </td>
                <td>
                  1596.00
                </td>
                <td>
                  1596.00
                </td>
                <td>
                  1596.00
                </td>
                <td>
                  23天
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
