<#-- 散拼、跟团产品预订页 -->
<#assign page_name="product-book"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="产品预订">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/">出境线路</a> <span class="divider">/</span></li>
          <li><a href="/product/detail/?id=${pdt.productId}">${pdt.title}</a> <span class="divider">/</span></li>
          <li class="active">预订操作</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div id="J_form_body" class="form-horizontal mod-body">
          <ul class="order-info clearfix">
            <li><strong>线路名称：</strong>${pdt.title}</li>
            <li>
              <strong>出发日期：</strong>
              <select id="J_start_date" class="date-select">
                <#list dateList as it>
                  <option value="${it.key}">${it.value}</option>
                </#list>
              </select>
            </li>
            <li class="clearfix">
              <div class="pull-left"><strong>成人价格：</strong> 0/${pdt.adultPrice}</div>
              <div class="pull-left people-num"><strong>人数：</strong> <input type="text" id="J_adult_num" value="1">
              </div>
            </li>
            <li class="clearfix">
              <div class="pull-left"><strong>小孩价格：</strong> 0/${pdt.childPrice!'NaN'}</div>
              <div class="pull-left people-num"><strong>人数：</strong> <input type="text" id="J_child_num" value="0">
              </div>
            </li>
            <li><strong>联系人：</strong> <input type="text" id="J_contact"> <strong> 联系方式：</strong> <input type="text"
                                                                                                        id="J_phone">
            </li>
            <li><strong class="desc-name">订单备注：</strong> <textarea class="desc-value" id="J_desc"></textarea></li>
          </ul>
          <div class="add-customer">
            <button id="J_add_customer" class="btn btn-primary btn-small">填写游客信息</button>
          </div>
          <div class="order-info">
            <strong>游客名单：</strong>
            <table class="table table-bordered">
              <thead>
              <tr>
                <th>
                  类型
                </th>
                <th>
                  姓名
                </th>
                <th>
                  性别
                </th>
                <th>
                  证件号码
                </th>
                <th>
                  手机号码
                </th>
                <th>
                  门市价格
                </th>
                <th>
                  可选项目
                </th>
              </tr>
              </thead>
              <tbody id="J_customer_list"></tbody>
            </table>
          </div>
        </div>
        <div id="J_form_body_preview" class="form-horizontal mod-body" style="display: none;">
          <ul class="order-info clearfix">
            <li><strong>线路名称：</strong>${pdt.title}</li>
            <li><strong>出发日期：</strong><span id="J_start_date_preview"></span></li>
            <li><strong>联系人：</strong> <span id="J_contact_preview"></span></li>
            <li><strong>联系电话：</strong> <span id="J_phone_preview"></span></li>
            <li><strong>预订人数：</strong> <span id="J_customer_count_preview"></span></li>
            <li><strong>合计费用：</strong> <span id="J_total_cost_preview"></span></li>
            <li><strong class="desc-name">订单备注：</strong> <span class="desc-value" id="J_desc_preview"></span></li>
          </ul>
          <div class="order-info">
            <strong>游客名单：</strong>
            <table class="table table-bordered">
              <thead>
              <tr>
                <th>
                  类型
                </th>
                <th>
                  姓名
                </th>
                <th>
                  性别
                </th>
                <th>
                  证件号码
                </th>
                <th>
                  手机号码
                </th>
                <th>
                  门市价格
                </th>
                <th>
                  可选项目
                </th>
                <th>
                  合计
                </th>
              </tr>
              </thead>
              <tbody id="J_customer_list_preview"></tbody>
            </table>
          </div>
        </div>
        <div class="book-action">
          <button id="J_confirm_order" class="btn btn-primary">提交</button>
          <button id="J_save_order" class="btn btn-primary" style="display: none">确认提交</button>
          <button id="J_edit_order" class="btn" style="display: none;">修改订单</button>
          <a href="/product/detail/?id=${pdt.productId}" class="btn">取消预订</a>
        </div>
      </div>
    </div>
      <#macro customer_row isAdult=true>
      <tr>
        <td>
          <span class="j-isadult" data-isAdult="<#if isAdult>true<#else>false</#if>"><#if isAdult>大人<#else>
            小孩</#if></span>
        </td>
        <td>
          <input type="text" class="name j-name">
        </td>
        <td>
          <select class="j-gender">
            <option value="0">男</option>
            <option value="1">女</option>
          </select>
        </td>
        <td>
          <select class="j-paper-type">
            <option value="1">身份证</option>
            <option value="2">护照</option>
            <option value="3">港澳通行证</option>
            <option value="4">台湾通行证</option>
          </select>
          <input type="text" class="idcard j-paper-value">
        </td>
        <td>
          <input type="text" class="phone j-phone">
        </td>
        <td>
          <input type="text" value="1000" class="price j-price">
        </td>
        <td>
          <div>
            <strong>单房差：</strong>${pdt.priceOfSingleRoom!100}
            <select class="j-dfc">
              <option>0</option>
              <option>1</option>
              <option>2</option>
            </select>
          </div>
          <div>
            <strong>保险：</strong>${pdt.bxPrice!20}
            <select class="j-bx">
              <option>0</option>
              <option>1</option>
              <option>2</option>
            </select>
          </div>
        </td>
      </tr>
      </#macro>
    <script id="J_adult_row" type="text/tpl">
      <@customer_row isAdult=true></@customer_row>
    </script>
    <script id="J_child_row" type="text/tpl">
      <@customer_row isAdult=false></@customer_row>
    </script>
    <script id="J_customer_row_preview" type="text/tpl">
      {{#each list}}
      <tr>
        <td>
          {{#isAdult}}大人{{/isAdult}}{{^isAdult}}小孩{{/isAdult}}
        </td>
        <td>
          {{name}}
        </td>
        <td>
          {{#isMale}}男{{/isMale}}{{^isMale}}女{{/isMale}}
        </td>
        <td>
          {{paperName}}：{{paperValue}}
        </td>
        <td>
          {{phone}}
        </td>
        <td>
          {{price}}
        </td>
        <td>
          {{#dfcCount}}单房差：${pdt.priceOfSingleRoom!1000}*{{.}}{{/dfcCount}}
          {{#bxCount}}保险：20*{{.}}{{/bxCount}}
        </td>
        <td>
          {{totalPrice}}
        </td>
      </tr>
      {{/each}}
    </script>
    <script>
      id = '${pdt.productId}';
      dfcPrice = '${pdt.priceOfSingleRoom!100}';
      bxPrice = '${pdt.bxPrice!20}';
    </script>
    </@body>
  </@html>
</#escape>
