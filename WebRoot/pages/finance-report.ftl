<#-- 年、月报表页 -->
<#assign page_name="finance-report"/>
<#include "common/module.ftl"/>
<#assign type="${type!'year'}">
<#if type=="year">
  <#assign title="年报表">
<#else>
  <#assign title="月报表">
</#if>
<#escape x as x?html>
  <@html title="${title}">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/finance/">财务结算</a> <span class="divider">/</span></li>
          <li class="active">${title}</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <div class="mod-body">
            <div class="condition form-horizontal">
              年份
              <select id="J_select_year" class="input-small">
                <option value="2005">2005</option>
                <option value="2006">2006</option>
                <option value="2007">2007</option>
                <option value="2008">2008</option>
                <option value="2009">2009</option>
                <option value="2010">2010</option>
                <option value="2011">2011</option>
                <option value="2012">2012</option>
                <option value="2013">2013</option>
                <option value="2014">2014</option>
              </select>
              <#if type=="month">
                月份
                <select id="J_select_month" class="input-small">
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                </select>
              </#if>
              <button class="btn btn-success btn-small" type="button" id="J_ok"><i class="icon-search"></i> 确定</button>
              <button class="btn btn-small" type="button"><i class="icon-download"></i> 下载报表</button>
            </div>
            <table id="J_table" class="tree-view table table-bordered">
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
                <td colspan="6">
                  <div>
                    出境线路 <a href="javascript:;" class="j-toggle">展开</a>
                  </div>
                  <#list metas1 as it>
                    <ol class="item-list" style="display: none;">
                      <li>
                        <div class="item-type">${it.minorTypeCodeName!}</div>
                        <div class="item-count">${it.orderCount}</div>
                        <div class="item-number">${it.adultCount+it.childCount}</div>
                        <div class="item-price">${it.orderAmount}</div>
                        <div class="item-amount">${it.settlementAmount}</div>
                        <div class="item-detail"><a href="/finance/report/detail/?year=${it.yearOfStart}<#if type == 'month'>&month=${it.monthOfStart}</#if>&mainTypeCode=${it.mainTypeCode}&minorTypeCode=${it.minorTypeCode}">查看</a></div>
                      </li>
                    </ol>
                  </#list>
                </td>
              </tr>
              <tr>
                <td colspan="6">
                  <div>
                    港澳台线路 <a href="javascript:;" class="j-toggle">展开</a>
                  </div>
                  <#list metas3 as it>
                    <ol class="item-list" style="display: none;">
                      <li>
                        <div class="item-type">${it.minorTypeCodeName}</div>
                        <div class="item-count">${it.orderCount}</div>
                        <div class="item-number">${it.adultCount+it.childCount}</div>
                        <div class="item-price">${it.orderAmount}</div>
                        <div class="item-amount">${it.settlementAmount}</div>
                        <div class="item-detail"><a href="/finance/report/detail/?year=${it.yearOfStart}<#if type == 'month'>&month=${it.monthOfStart}</#if>&mainTypeCode=${it.mainTypeCode}&minorTypeCode=${it.minorTypeCode}">查看</a></div>
                      </li>
                    </ol>
                  </#list>
                </td>
              </tr>
              <tr>
                <td colspan="6">
                  <div>
                    国内线路 <a href="javascript:;" class="j-toggle">展开</a>
                  </div>
                  <#list metas2 as it>
                    <ol class="item-list" style="display: none;">
                      <li>
                        <div class="item-type">${it.minorTypeCodeName}</div>
                        <div class="item-count">${it.orderCount}</div>
                        <div class="item-number">${it.adultCount+it.childCount}</div>
                        <div class="item-price">${it.orderAmount}</div>
                        <div class="item-amount">${it.settlementAmount}</div>
                        <div class="item-detail"><a href="/finance/report/detail/?year=${it.yearOfStart}<#if type == 'month'>&month=${it.monthOfStart}</#if>&mainTypeCode=${it.mainTypeCode}&minorTypeCode=${it.minorTypeCode}">查看</a></div>
                      </li>
                    </ol>
                  </#list>
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
