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
              起止日期 <input id="J_start_date" type="text" class="date-box input-small" readonly="">
              ~
              <input id="J_end_date" type="text" class="date-box input-small" readonly="">
              <button id="J_search_btn" class="btn btn-success search-btn" type="button">确定</button>
            </div>
            <table id="J_table" class="table table-hover table-bordered">
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
                <th width="150">
                  营业金额额
                </th>
                <th>
                  结算金额
                </th>
                <th width="80">
                  明细查看
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
              <td colspan="6">
                <div>
                  出境线路 <a href="javascript:;" class="j-toggle">展开</a>
                </div>
                <#assign metas1=[{'minorTypeCodeName':'1'}]/>
                <#list metas1 as it>
                  <ol class="item-list" style="display: none;">
                    <li>
                      <div class="item-type">${it.minorTypeCodeName!}</div>
                      <div class="item-count">${it.minorTypeCodeName}</div>
                      <div class="item-number">${it.minorTypeCodeName}</div>
                      <div class="item-price">${it.minorTypeCodeName}</div>
                      <div class="item-amount">${it.minorTypeCodeName}</div>
                      <div class="item-detail"><a href="/finance/report/?type=month" target="_blank">查看</a></div>
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
                <#assign metas1=[{'minorTypeCodeName':'1'}]/>
                <#list metas1 as it>
                  <ol class="item-list" style="display: none;">
                    <li>
                      <div class="item-type">${it.minorTypeCodeName!}</div>
                      <div class="item-count">${it.minorTypeCodeName}</div>
                      <div class="item-number">${it.minorTypeCodeName}</div>
                      <div class="item-price">${it.minorTypeCodeName}</div>
                      <div class="item-amount">${it.minorTypeCodeName}</div>
                      <div class="item-detail"><a href="/finance/report/?type=month" target="_blank">查看</a></div>
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
                <#assign metas1=[{'minorTypeCodeName':'1'}]/>
                <#list metas1 as it>
                  <ol class="item-list" style="display: none;">
                    <li>
                      <div class="item-type">${it.minorTypeCodeName!}</div>
                      <div class="item-count">${it.minorTypeCodeName}</div>
                      <div class="item-number">${it.minorTypeCodeName}</div>
                      <div class="item-price">${it.minorTypeCodeName}</div>
                      <div class="item-amount">${it.minorTypeCodeName}</div>
                      <div class="item-detail"><a href="/finance/report/?type=month" target="_blank">查看</a></div>
                    </li>
                  </ol>
                </#list>
              </td>
              </tr>
              <#--<#list metas as it>-->
              <#--<tr>-->
                <#--<td>-->
                  <#--${it.minorTypeCodeName}-->
                <#--</td>-->
                <#--<td>-->
                  <#--${it.orderCount}-->
                <#--</td>-->
                <#--<td>-->
                  <#--${it.adultCount+it.childCount}-->
                <#--</td>-->
                <#--<td>-->
                  <#--${it.orderAmount}-->
                <#--</td>-->
                <#--<td>-->
                  <#--${it.settlementAmount}-->
                <#--</td>-->
                <#--<td>-->
                  <#--<a href="">2</a>-->
                <#--</td>-->
              <#--</tr>-->
              <#--</#list>-->
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
