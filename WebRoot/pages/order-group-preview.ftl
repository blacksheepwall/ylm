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
        <div class="btn-list">
          <a href="" class="btn">打印</a>
          <a href="" class="btn">下载</a>
        </div>
      </div>
      <h1 class="top-title">团队预订单</h1>
      <h2 class="sub-title">订单编号：No.YSL13042410560353</h2>
      <ul class="order-info clearfix">
        <li><strong>甲方（预订人）：</strong>王伟</li>
        <li><strong>单位名称：</strong>网易杭州研究院</li>
        <li><strong>联系电话：</strong>13916668666</li>
        <li><strong>乙方（旅行社）：</strong>浙江中山国际旅行社</li>
        <li><strong>经办人：</strong>王伟</li>
        <li><strong>联系电话：</strong></li>
      </ul>
      <h2 class="sub-title">预订信息</h2>
      <ul class="order-info clearfix">
        <li class="whole-row"><strong>线路名称：</strong></li>
        <li><strong>团号：</strong>123456789</li>
        <li><strong>出发城市：</strong>杭州</li>
        <li><strong>旅游天数：</strong>4天</li>
        <li><strong>团队日期：</strong>2013.06.27</li>
        <li><strong>预订人数：</strong>10人</li>
        <li><strong>联系人：</strong>王伟</li>
        <li><strong>订单备注：</strong></li>
      </ul>
      <h2 class="sub-title">游客名单及费用</h2>
      <table class="table table-bordered user-list">
        <thead>
        <tr>
          <th>
            编号
          </th>
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
            费用
          </th>
          <th>
            证件信息
          </th>
          <th>
            联系电话
          </th>
          <th>
            备注
          </th>
        </tr>
        </thead>
        <tbody>
          <#assign user_list>
          <tr>
            <td>
              1
            </td>
            <td>
              林展科（成人）
            </td>
            <td>
              Lin ZhanKe
            </td>
            <td>
              男
            </td>
            <td>
              1000
            </td>
            <td>
              <p>身份证：330103195304060410</p>
            </td>
            <td>
              浙江
            </td>
            <td>
            </td>
          </tr>
          </#assign>
          <#noescape>${user_list}</#noescape>
          <#noescape>${user_list}</#noescape>
        </tbody>
      </table>
      <div class="order-cost">
        <h2 class="sub-title">费用支付</h2>
        <div class="cost-body">
          <p>1、旅游费用总计为人民币<b class="money"></b>元。</p>
          <p>2、付款日期及金额（根据系统判断，显示以下的一种）：</p>
          <p>➢     甲方应当在<b class="date"></b>年<b class="date"></b>月<b class="date"></b>日前支付订金（全款）<b class="money"></b>元。（有确定的缴费日期规则）</p>
          <p>➢     请接到乙方相关通知后，在指定日期内支付全款，若因逾期不付导致无法出团，甲方后果自负。（无确定缴费日期）。</p>
          <p>3、支付方式</p>
          <p>1)     汇款转账：</p>
          <p>开户行： <span class="normal">浙江中山国际旅行社有限公司</span></p>
          <p>开户名： <span class="normal">浙江中山国际旅行社有限公司</span></p>
          <p>帐号：12312312312</p>
        </div>
      </div>
      <p class="order-confirm">请对上述内容仔细审核，如无异意请盖章确认并回传我社。传真号码：12341234123</p>
      <div class="confirm-body">
        <div class="party">
          <p>甲方：</p>
          <p>甲方代表签字：</p>
          <p>日期：</p>
        </div>
        <div class="party">
          <p>乙方：浙江中山国际旅行社有限公司</p>
          <p>乙方盖章：</p>
          <p>日期：2013-05-15</p>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
