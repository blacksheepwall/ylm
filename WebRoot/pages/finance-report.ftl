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
                  <#assign item_list>
                    <ol class="item-list" style="display: none;">
                      <li>
                        <div class="item-type">美国</div>
                        <div class="item-count">10</div>
                        <div class="item-number">11</div>
                        <div class="item-price">1000.00</div>
                        <div class="item-amount">10000.00</div>
                        <div class="item-detail"><a href="/main/finance-report-detail?type=${type}">查看</a></div>
                      </li>
                    </ol>
                  </#assign>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
                </td>
              </tr>
              <tr>
                <td colspan="6">
                  <div>
                    港澳台线路 <a href="javascript:;" class="j-toggle">展开</a>
                  </div>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
                </td>
              </tr>
              <tr>
                <td colspan="6">
                  <div>
                    国内线路 <a href="javascript:;" class="j-toggle">展开</a>
                  </div>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
                  <#noescape>${item_list}</#noescape>
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
