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
          	<#list notes as it>
	          	<li>
	              <a href="${it.url}">${it.title}</a>
	            </li>
          	</#list>
          </ol>
        </div>
        <div class="span7">
          <h5 class="mod-title">促销产品</h5>
          <ol>
          	<#list promotion as it>
	            <li>
	              【促销标签】<a href="${it.url}">${it.title}</a> 杭州出发 2880
	            </li>          		
          	</#list>
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
          <#list lines as it>
	          <tr>
	            <td>
	              <a href="/product/line.do?id=${it.id}">${it.name}</a>
	            </td>
	            <td>
	              ${it.startPlace}
	            </td>
	            <td>
	              ${it.traffic}
	            </td>
	            <td>
	              ${it.price}
	            </td>
	            <td>
	              ${it.sendDate}
	            </td>
	          </tr>          	
          </#list>
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
          <#list orders as it>
	          <tr>
	            <td>
	              <a href="/order/info.do?id=${it.orderId}">${it.orderNumber}</a>
	            </td>
	            <td>
	              <a href="/product/detail.do?id=${it.productId}">${it.productName}</a>
	            </td>
	            <td>
	              ${it.beginDate}
	            </td>
	            <td>
	              ${it.travellerCount}
	            </td>
	            <td>
	              ${it.status}
	            </td>
	            <td>
	              ${it.contractStatus}
	            </td>
	            <td>
	              <a href="/order/download.do?id=${it.orderId}">下载</a>
	            </td>
	          </tr>          
          </#list>

          </tbody>
        </table>
      </div>
    </div>
    </div>
    </@body>
  </@html>
</#escape>
