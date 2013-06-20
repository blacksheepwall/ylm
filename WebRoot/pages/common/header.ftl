<nav class="site-nav mod-center">
  <a href="/main/" class="site-logo">
    <img src="/img/logo.png" alt="">
  </a>
  <div class="site-meta">
    <strong class="site-title">浙江中山国际旅行社分销系统</strong>
    <p class="site-sub-title">TBDS</p>
  </div>
  <div class="site-toolkit clearfix">
    <div class="links">
      <a href="/u/">用户中心</a>
      <a href="/manage/">管理中心</a>
      <a href="/main/help">常见问题</a>
    </div>
    <div class="hotline">
      <div class="text">服务热线</div>
      <div class="number">4008268100</div>
    </div>
  </div>
</nav>
<header id="J_header">
  <div class="row-fluid">
    <div class="span12">
      <div class="navbar">
        <div class="navbar-inner">
          <div class="mod-center">
            <a data-target=".navbar-responsive-collapse" data-toggle="collapse" class="btn btn-navbar"><span
              class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></a>
            <#--<a href="/main/" class="brand"><strong title="浙江中山国际旅行社分销系统">TBDS</strong></a>-->
            <div class="nav-collapse collapse navbar-responsive-collapse">
              <ul class="nav">
                <li <#if "main,news-detail,news"?contains(page_name)>class="active"</#if>>
                <#--<li "main,news-detail,news".contains?page_name<#if page_name=="main"||page_name=="news-detail"||page_name=="news">class="active"</#if>>-->
                  <a href="/main/">首页</a>
                </li>
                <li>
                  <a href="#">出境游</a>
                </li>
                <li <#if "product,inland-travel"?contains(page_name)>class="active"</#if>>
                  <a href="/inland/">国内游</a>
                </li>
                <li>
                  <a href="#">自由行</a>
                </li>
                <li>
                  <a href="#">整团业务</a>
                </li>
                <li <#if page_name?contains("order-manage")>class="active"</#if>>
                  <a href="/main/order-manage">订单管理</a>
                </li>
                <li <#if page_name?contains("finance")>class="active"</#if>>
                  <a href="/main/finance/">财务结算</a>
                </li>
              </ul>
              <ul class="nav nav-login pull-right">
                <li class="clearfix">
                  <div class="avatar">
                    <img src="http://www.youlema.com/default/img/logo_new.png" alt="">
                  </div>
                  <div class="info">
                    <div class="clearfix"><span class="pull-left">刘思成(业务操作员) </span><span class="pull-right">退出</span></div>
                    <div class="clearfix"><span class="pull-left">消息(3)</span><span class="pull-right">快捷菜单</span></div>
                  </div>
                </li>
                <#--<li class="dropdown">-->
                  <#--<a data-toggle="dropdown" class="dropdown-toggle" href="#">个人设置<strong class="caret"></strong></a>-->
                  <#--<ul class="dropdown-menu">-->
                    <#--<li>-->
                      <#--<a href="#">Action</a>-->
                    <#--</li>-->
                    <#--<li>-->
                      <#--<a href="#">Another action</a>-->
                    <#--</li>-->
                    <#--<li>-->
                      <#--<a href="#">Something else here</a>-->
                    <#--</li>-->
                    <#--<li class="divider">-->
                    <#--</li>-->
                    <#--<li>-->
                      <#--<a href="#">Separated link</a>-->
                    <#--</li>-->
                  <#--</ul>-->
                <#--</li>-->
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</header>