<#-- 常见问题页 -->
<#assign page_name="help"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="常见问题">
    <@body class="manage-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li class="active">常见问题</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div class="span2">
          <ul id="J_sidebar" class="nav nav-list manage-sidebar">
            <li class="nav-header">
              <i class="icon-question-sign"></i> 常见问题
            </li>
            <li>
              <a href="#1">使用说明下载<i class="icon-chevron-right"></i></a>
            </li>
            <li>
              <a href="#2">常用软件下载<i class="icon-chevron-right"></i></a>
            </li>
            <li>
              <a href="#3">日历显示异常<i class="icon-chevron-right"></i></a>
            </li>
            <li>
              <a href="#4">系统设置说明<i class="icon-chevron-right"></i></a>
            </li>
          </ul>
        </div>
        <div class="span10 manage-body">
          <div class="mod-body clearfix">
          <h5 id="1" class="mod-title">使用说明下载</h5>
          <div><a href="">《浙江中山国际旅行社代理分销系统（TBDS）使用手册》</a></div>
          <div><a href="">《浙江中山国际旅行社代理分销系统（TBDS）使用守则》</a></div>
        </div>
          <div class="mod-body clearfix">
            <h5 id="2" class="mod-title">常用软件下载</h5>
            <div><a href="">谷歌浏览器</a></div>
            <div><a href="">谷歌浏览器</a></div>
          </div>
          <div class="mod-body clearfix">
            <h5 id="3" class="mod-title">日历中星期重叠原因及解决办法</h5>
            <div>
              <p>
                日历相关操作页面中，日历显示时，星期会出现重叠，导致日期和星期数据不匹配，如下图：<br>
                <img src="/img/help/u75_normal.png" alt="">
              </p>
              <p>
                原因：
                浏览器显示比列没有达到100%。导致日历宽度减少，显示重叠。<br>
              </p>
              <p>
                解决办法：
                1、Chrome浏览器，设置浏览显示比列为100%，如下图：<br>
                <img src="/img/help/u77_normal.png" alt="">
              </p>
              <p>
                2、IE浏览器，设置浏览显示比例未100%，如下图：<br>
                <img src="/img/help/u75_normal.png" alt="">
              </p>
            </div>
          </div>
          <div class="mod-body clearfix">
            <h5 id="4" class="mod-title">系统设置说明</h5>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
