<#-- 团队出团通知单预览 -->
<#assign page_name="order-group-preview"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="团队出团通知单预览">
    <@body nohead=true>
    <div class="main-body">
      <div class="top">
        <img src="/img/logo.png" alt="">
        <p class="name">温州海外旅游有限公司</p>
        <ul class="clearfix">
          <li>地址：温州市锦绣路锦绣中城大厦302室</li>
          <li>联系电话：400-711-8989</li>
          <li>传真：55552222</li>
        </ul>
      </div>
      <div class="top">
        <h1 class="top-title">团队预订单</h1>
        <div class="btn-list">
          <a href="" class="btn">打印</a>
          <a href="" class="btn">下载</a>
        </div>
      </div>
      <h2 class="sub-title">订单编号：No.YSL13042410560353</h2>
      <ul class="order-info clearfix">
        <li><strong>预订产品：东航直飞巴厘岛5晚6日至尊逍遥之旅</strong></li>
        <li><strong>出发日期：2013-05-13</strong></li>
        <li><strong>预订人：林展科：</strong></li>
        <li><strong>联系电话：</strong></li>
        <li><strong>预订人数：10人</strong></li>
        <li><strong>总价：16308.00</strong></li>
        <li><strong>订单备注：</strong></li>
      </ul>
      <h2 class="sub-title">名单及费用明细</h2>
      <table class="table table-bordered user-list">
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
            联系电话
          </th>
          <th>
            预订价格
          </th>
          <th>
            附加产品
          </th>
          <th>
            合计
          </th>
        </tr>
        </thead>
        <tbody>
          <#assign user_list>
          <tr>
            <td>
              成人
            </td>
            <td>
              林展科
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
            </td>
            <td>
              5800.00
            </td>
            <td>
              保险：20.00*2=40.00
            </td>
            <td>
              5840.00
            </td>
          </tr>
          </#assign>
          <#noescape>${user_list}</#noescape>
          <#noescape>${user_list}</#noescape>
        </tbody>
      </table>
      <div class="order-cost">
        <h2 class="sub-title">团队信息</h2>
        <div>
          <strong>详见附件：《团队行程单》</strong>
        </div>
      </div>
      <div class="order-cost">
        <h2 class="sub-title">预订说明</h2>
      </div>
      <div class="confirm-body">
        <div class="party" style="margin-left:500px;">
          <p>温州海外旅游有限公司</p>
          <p>经办人：</p>
          <p>联系电话：</p>
          <p>日期：2013-05-15</p>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
