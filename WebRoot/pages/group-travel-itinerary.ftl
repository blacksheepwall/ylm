<#-- 团队行程单 -->
<#assign page_name="group-travel-itinerary"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="团队行程单">
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
        <h1 class="top-title">东航直飞巴厘岛5晚6日至尊逍遥之旅</h1>
        <div class="btn-list">
          <a href="" class="btn">打印</a>
          <a href="" class="btn">下载</a>
        </div>
      </div>
      <div>
        <h2 class="sub-title">订单编号：No.YSL13042410560353</h2>
        <ul class="order-info multi clearfix">
          <li><strong>团队编号：YHK28PA20130311A</strong></li>
          <li><strong>旅游天数：4晚5天</strong></li>
          <li><strong>团队日期：2013-3-11至2013-3-16</strong></li>
          <li><strong>旅行证件：13916668666</strong></li>
          <li><strong>出发口岸：杭州</strong></li>
          <li><strong>出发交通：飞机： CA4321（14：30/14:55）</strong></li>
          <li><strong>返回口岸：三亚</strong></li>
          <li><strong>返回交通：飞机： 待定</strong></li>
        </ul>
      </div>
      <div>
        <p class="order-confirm">成人价：3888.00   小孩价：2888.00   单房差：899.00</p>
      </div>
      <div>
        <h2 class="sub-title">行程特色</h2>
        <div class="section">
          <p>★特色餐饮：大理沙锅鱼、过桥米线或云南野生菌火锅、丽江纳西喜宴、统统一网打尽；</p>
          <p>★尊贵舒心：全程纯玩无购物，充分满足你的游玩时间；</p>
          <p>★超值享受：全程特别安排昆明、楚雄精选特色豪华酒店，丽江2晚升级超豪华酒店，您可在欣赏美丽风情的同时享受尊贵舒适服务；</p>
          <p>★云景盛宴：石林、感通索道、丽江古城、玉龙雪山、印象丽江、新华民俗村或南诏民族村…………</p>
          <p>★贴心服务：昆明导游全程陪同，为您提供细致周到的服务，每人每天赠送一瓶矿泉水（行程内共4瓶/人）！</p>
        </div>
      </div>
      <div>
        <h2 class="sub-title">行程安排</h2>
        <div class="section">
          <p>符号：【景点】 〖自费〗 『购物点』  ◎ 外观途观   ●入内参观   △远观车观   ★特别安排   ◆行程自费  ◇推荐自费</p>
        </div>
      </div>
      <div>
        <h2 class="sub-title">费用说明</h2>
        <div class="section">
          【费用包含】：

          【费用不包含】：

          【赠送项目】：
        </div>
      </div>
      <div>
        <h2 class="sub-title">自费项目</h2>
        <table class="table table-bordered user-list">
          <thead>
          <tr>
            <th>
              项目名称
            </th>
            <th>
              类型
            </th>
            <th>
              参考价格
            </th>
            <th>
              项目描述
            </th>
          </tr>
          </thead>
          <tbody>
            <#assign list>
            <tr>
              <td>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
            </tr>
            </#assign>
            <#noescape>${list}</#noescape>
            <#noescape>${list}</#noescape>
          </tbody>
        </table>
      </div>
      <div>
        <h2 class="sub-title">购物安排</h2>
        <table class="table table-bordered user-list">
          <thead>
          <tr>
            <th>
              项目名称
            </th>
            <th>
              日期安排
            </th>
            <th>
              购物点说明
            </th>
          </tr>
          </thead>
          <tbody>
            <#assign list>
            <tr>
              <td>
              </td>
              <td>
              </td>
              <td>
            </tr>
            </#assign>
            <#noescape>${list}</#noescape>
            <#noescape>${list}</#noescape>
          </tbody>
        </table>
      </div>
      <div>
        <h2 class="sub-title">签证须知</h2>
        <div class="section"></div>
      </div>
      <div>
        <h2 class="sub-title">预订须知</h2>
        <div class="section">
          【预订须知】：

          【预订提示】：
        </div>
      </div>
      <div>
        <h2 class="sub-title">出行准备</h2>
        <div class="section">
          【出行须知】：

          【温馨提示】：
        </div>
      </div>
      <div>
        <h2 class="sub-title">其它出发日期</h2>
        <table class="table table-bordered user-list">
          <thead>
          <tr>
            <th>
              团队编号
            </th>
            <th>
              出发日期
            </th>
            <th>
              出发口岸
            </th>
            <th>
              成人价格
            </th>
            <th>
              小孩价格
            </th>
            <th>
              单房查
            </th>
          </tr>
          </thead>
          <tbody>
            <#assign list>
            <tr>
              <td>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
            </tr>
            </#assign>
            <#noescape>${list}</#noescape>
            <#noescape>${list}</#noescape>
          </tbody>
        </table>
      </div>
      <p>本行程单只做参考行程，产品如有变更，恕不另行通知！</p>
      <div class="confirm-body">
        <#--<div class="party">-->
          <#--<p>甲方：</p>-->
          <#--<p>甲方代表签字：</p>-->
          <#--<p>日期：</p>-->
        <#--</div>-->
        <div class="party" style="margin-left:500px;">
          <p>曾俊 联系电话 0571-85176132 0571-85108207</p>
          <p>打印时间：2013-02-27 10:00:36</p>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
