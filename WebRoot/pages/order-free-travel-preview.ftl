<#-- 自由行预订单预览 -->
<#assign page_name="order-free-travel-preview"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="自由行预订单预览">
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
      <h1 class="top-title">自由行预订单</h1>
      <div class="btn-list">
        <a href="" class="btn">打印</a>
        <a href="" class="btn">下载</a>
      </div>
      <div>
        <h2 class="sub-title">订单编号：No.YSL13042410560353</h2>
        <ul class="order-info clearfix">
          <li><strong>预订产品：</strong>东航直飞巴厘岛5晚6日至尊逍遥之</li>
          <li><strong>出发日期：</strong>2013.06.27</li>
          <li><strong>预订人：</strong>王伟</li>
          <li><strong>联系电话：</strong>13916668666</li>
          <li><strong>预订人数：</strong>2</li>
          <li><strong>总价：</strong>10000.00</li>
          <li><strong>联系电话：</strong></li>
          <li><strong>订单备注：</strong></li>
        </ul>
      </div>
      <div>
        <h2 class="sub-title">机票信息</h2>
        <table class="table table-bordered user-list">
          <thead>
          <tr>
            <th>
              出发日期
            </th>
            <th>
              出发时间/机场
            </th>
            <th>
              抵达时间/机场
            </th>
            <th>
              航班号
            </th>
            <th>
              机型
            </th>
            <th>
              仓位
            </th>
            <th>
              数量
            </th>
            <th>
              备注
            </th>
          </tr>
          </thead>
          <tbody>
            <#assign list>
            <tr>
              <td>
                2013-08-29
              </td>
              <td>
                07:45
              </td>
              <td>
                杭州-萧山国际机场
              </td>
              <td>
                11:20
              </td>
              <td>
                香港-启德国际机场
              </td>
              <td>
                KA937
              </td>
              <td>
                港龙航空
              </td>
              <td>
                经济舱
              </td>
            </tr>
            </#assign>
            <#noescape>${list}</#noescape>
            <#noescape>${list}</#noescape>
          </tbody>
        </table>
        <p>退改政策</p>
      </div>
      <div>
        <h2 class="sub-title">酒店信息</h2>
        <table class="table table-bordered user-list">
          <thead>
          <tr>
            <th>
              出发日期
            </th>
            <th>
              出发时间/机场
            </th>
            <th>
              抵达时间/机场
            </th>
            <th>
              航班号
            </th>
            <th>
              机型
            </th>
            <th>
              仓位
            </th>
            <th>
              数量
            </th>
            <th>
              备注
            </th>
          </tr>
          </thead>
          <tbody>
            <#assign list>
            <tr>
              <td>
                2013-08-29
              </td>
              <td>
                07:45
              </td>
              <td>
                杭州-萧山国际机场
              </td>
              <td>
                11:20
              </td>
              <td>
                香港-启德国际机场
              </td>
              <td>
                KA937
              </td>
              <td>
                港龙航空
              </td>
              <td>
                经济舱
              </td>
            </tr>
            </#assign>
            <#noescape>${list}</#noescape>
            <#noescape>${list}</#noescape>
          </tbody>
        </table>
        <p>退改政策</p>
      </div>
      <div>
        <h2 class="sub-title">附加项目</h2>
        <table class="table table-bordered user-list">
          <thead>
          <tr>
            <th>
              出发日期
            </th>
            <th>
              出发时间/机场
            </th>
            <th>
              抵达时间/机场
            </th>
            <th>
              航班号
            </th>
            <th>
              机型
            </th>
            <th>
              仓位
            </th>
            <th>
              数量
            </th>
            <th>
              备注
            </th>
          </tr>
          </thead>
          <tbody>
            <#assign list>
            <tr>
              <td>
                2013-08-29
              </td>
              <td>
                07:45
              </td>
              <td>
                杭州-萧山国际机场
              </td>
              <td>
                11:20
              </td>
              <td>
                香港-启德国际机场
              </td>
              <td>
                KA937
              </td>
              <td>
                港龙航空
              </td>
              <td>
                经济舱
              </td>
            </tr>
            </#assign>
            <#noescape>${list}</#noescape>
            <#noescape>${list}</#noescape>
          </tbody>
        </table>
        <p>退改政策</p>
      </div>
      <div>
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
      </div>
      <div>
        <h3 class="sub-title">预订说明</h3>
      </div>
      <div class="confirm-body">
        <#--<div class="party">-->
          <#--<p>甲方：</p>-->
          <#--<p>甲方代表签字：</p>-->
          <#--<p>日期：</p>-->
        <#--</div>-->
        <div class="party">
          <p>经办人：浙江中山国际旅行社有限公司</p>
          <p>联系电话：</p>
          <p>日期：2013-05-15</p>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
