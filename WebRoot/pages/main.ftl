<#-- 首页 -->
<#assign page_name="main"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="首页">
    <@body class="main-page">
    <div class="container-fluid">
    <div class="row-fluid">
      <div class="span2">
        <ul class="nav nav-list">
          <li class="nav-header">
            我的快捷菜单
          </li>
          <li class="active">
            <a href="#">出境跟团游<i class="icon-chevron-right"></i></a>
          </li>
          <li>
            <a href="#">国内跟团游<i class="icon-chevron-right"></i></a>
          </li>
          <li>
            <a href="#">我的订单<i class="icon-chevron-right"></i></a>
          </li>
          <li>
            <a href="#">整团预报<i class="icon-chevron-right"></i></a>
          </li>
        </ul>
      </div>
      <div class="span10">
        <form class="form-search">
          <select class="top-search">
            <option>跟团游</option>
            <option>自由行</option>
            <option>线路</option>
          </select>
          <div class="input-append">
            <input class="input-xlarge" type="text">
            <button class="btn" type="button">搜索</button>
          </div>
        </form>
        <div class="alert alert-info">
          <button type="button" class="close" data-dismiss="alert">×</button>
          系统公告列表：公告标题，超链接方式，滚动方式
        </div>
      </div>
      <div class="span10">
        <div class="span5">
          <h5 class="mod-title">业务公告<a class="pull-right more" href="/main/news.do">更多>></a></h5>
          <ol>
            <li>
              <a href="/main/news-detail.do">6月港澳散拼计划</a>
            </li>
            <li>
              <a href="/main/news-detail.do">7月美加计划</a>
            </li>
            <li>
              <a href="/main/news-detail.do">6月港澳散拼计划</a>
            </li>
            <li>
              <a href="/main/news-detail.do">7月美加计划</a>
            </li>
            <li>
              <a href="/main/news-detail.do">6月港澳散拼计划</a>
            </li>
            <li>
              <a href="/main/news-detail.do">7月美加计划</a>
            </li>
          </ol>
        </div>
        <div class="span7">
          <h5 class="mod-title">促销产品</h5>
          <ol>
            <li>
              【促销标签】<a href="">石家庄-北京双飞六日</a> 杭州出发 2880
            </li>
            <li>
              【促销标签】<a href="">石家庄-北京双飞六日</a> 杭州出发 2880
            </li>
            <li>
              【促销标签】<a href="">石家庄-北京双飞六日</a> 杭州出发 2880
            </li>
            <li>
              【促销标签】<a href="">石家庄-北京双飞六日</a> 杭州出发 2880
            </li>
            <li>
              【促销标签】<a href="">石家庄-北京双飞六日</a> 杭州出发 2880
            </li>
          </ol>
        </div>
      </div>
    </div>
    <div class="row-fluid">
      <div class="span2"></div>
      <div class="span10">
        <h5 class="mod-title">最新上架</h5>
        <table class="table table-hover table-bordered">
          <thead>
          <tr>
            <th>
              线路名称
            </th>
            <th>
              出发港口
            </th>
            <th>
              往返交通
            </th>
            <th>
              最低价格
            </th>
            <th>
              发团日期
            </th>
          </tr>
          </thead>
          <tbody>
          <#assign lastest>
          <tr>
            <td>
              <a href="">【蜜月游】毛里求斯8天5晚伊甸园之旅</a>
            </td>
            <td>
              上海
            </td>
            <td>
              飞机/飞机
            </td>
            <td>
              4889.00
            </td>
            <td>
              6-18、6-23、6-30
            </td>
          </tr>
          </#assign>
          <#noescape>
            ${lastest}${lastest}${lastest}${lastest}${lastest}
          </#noescape>
          </tbody>
        </table>
      </div>
    </div>
    <div class="row-fluid">
      <div class="span2"></div>
      <div class="span10">
        <h5 class="mod-title">待处理的订单</h5>
        <table class="table table-hover table-bordered">
          <thead>
          <tr>
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
              状态
            </th>
            <th>
              合同状态
            </th>
            <th>
              出团通知
            </th>
          </tr>
          </thead>
          <tbody>
          <#assign orderList>
          <tr>
            <td>
              <a href="">YSL13042410560353</a>
            </td>
            <td>
              <a href="">【双城春色】石家庄-北京双飞六日游</a>
            </td>
            <td>
              2013-05-07
            </td>
            <td>
              3大1小
            </td>
            <td>
              已确认
            </td>
            <td>
              客户已签订
            </td>
            <td>
              <a href="">下载</a>
            </td>
          </tr>
          </#assign>
          <#noescape>
            ${orderList}
            ${orderList}
            ${orderList}
            ${orderList}
            ${orderList}
          </#noescape>
          </tbody>
        </table>
      </div>
    </div>
    </div>
    </@body>
  </@html>
</#escape>
