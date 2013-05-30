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
          <input type="text" class="input-xxlarge search-query">
          <button type="submit" class="btn">搜索</button>
        </form>
        <div class="alert alert-info">
          <button type="button" class="close" data-dismiss="alert">×</button>
          系统公告列表：公告标题，超链接方式，滚动方式
        </div>
      </div>
      <div class="span10">
        <div class="span4">
          <h5 class="mod-title">业务公告<a class="pull-right more" href="/main/news.do">更多</a></h5>
          <ol>
            <li>
              这里是系统公告系统公告系统公告系统公告
            </li>
            <li>
              这里是系统公告系统公告系统公告
            </li>
            <li>
              这里是系统公告系统公告
            </li>
            <li>
              这里是系统公告
            </li>
            <li>
              这里是系统公告
            </li>
            <li>
              这里是系统公告
            </li>
            <li>
              这里是系统公告
            </li>
            <li>
              这里是系统公告
            </li>
          </ol>
        </div>
        <div class="span6">
          <h5 class="mod-title">促销产品</h5>
          <ol>
            <li>
              这里是系统公告系统公告系统公告系统公告
            </li>
            <li>
              这里是系统公告系统公告系统公告
            </li>
            <li>
              这里是系统公告系统公告
            </li>
            <li>
              这里是系统公告
            </li>
            <li>
              这里是系统公告
            </li>
            <li>
              这里是系统公告
            </li>
            <li>
              这里是系统公告
            </li>
            <li>
              这里是系统公告
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
          <tr>
            <td>
              1
            </td>
            <td>
              TB - Monthly
            </td>
            <td>
              01/04/2012
            </td>
            <td>
              Default
            </td>
            <td>
              Default
            </td>
          </tr>
          <tr>
            <td>
              1
            </td>
            <td>
              TB - Monthly
            </td>
            <td>
              01/04/2012
            </td>
            <td>
              Default
            </td>
            <td>
              Default
            </td>
          </tr>
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
          <tr>
            <td>
              1
            </td>
            <td>
              TB - Monthly
            </td>
            <td>
              01/04/2012
            </td>
            <td>
              Default
            </td>
            <td>
              Default
            </td>
          </tr>
          <tr>
            <td>
              1
            </td>
            <td>
              TB - Monthly
            </td>
            <td>
              01/04/2012
            </td>
            <td>
              Default
            </td>
            <td>
              Default
            </td>
          </tr>
          </tbody>
        </table>
      </div>
    </div>
    </div>
    </@body>
  </@html>
</#escape>
