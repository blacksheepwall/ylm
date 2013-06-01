<#include "config.ftl">
<#macro html target="" title="">
<!DOCTYPE html>
<html>
  <@head title="${title!'TBDS'}"
  keywords="浙江中山国际旅行社分销系统"
  description="浙江中山国际旅行社分销系统" target="${target}">
  </@head>
    <#nested>
</html>
</#macro>

<#macro head title="" keywords="" description="" target="">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>${title}</title>
  <meta name="keywords" content="${keywords}"/>
  <meta name="description" content="${description}"/>
  <#if target!="">
    <base target="${target}"/>
  </#if>
  <#include "function.ftl"/>
  <!-- Fav and touch icons -->
  <link rel="shortcut icon" href="/img/favicon.png">
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
  <script src="/js/base/html5shiv.js"></script>
  <![endif]-->
  <#include "css.ftl">
  <#nested />
</head>
</#macro>

<#macro body class="" id="" nohead=false>
<body class="${class}" <#if id!="">id="${id}"</#if>>
  <#if nohead>
    <#nested>
  <#else>
    <#include "header.ftl"/>
    <#nested>
  <a id="J_page_to_top" class="global-totop" title="回到顶部"></a>
    <#include "footer.ftl"/>
  </#if>
  <#include "js.ftl">
</body>
</#macro>

<#-- 通用页面内容主体 -->
<#macro main_con class="" id="" sys_name_id="" sys_name_class="" sys_name="" sys_href="" hasLogo=true>
<div class="main-con ${class}" <#if id!="">id="${id}"</#if>>
<#-- 子服务内容主体 -->
  <div class="main-wrapper">
    <div class="main-inner">
      <#nested>
      <div class="main-above-cloud">
        <div class="main-cloud"></div>
      </div>
    </div>
  </div>
</div>
</#macro>

<#macro manage_sidebar>
<div class="span2">
  <ul class="nav nav-list">
    <li class="nav-header">
      公司信息
    </li>
    <li>
      <a href="#">信息修改<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "manage-add-user"==page_name>class="active"</#if>>
      <a href="/main/manage-add-user.do">新增系统用户<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "manage-users"==page_name>class="active"</#if>>
      <a href="/main/manage-users.do">系统用户管理<i class="icon-chevron-right"></i></a>
    </li>
    <li>
      <a href="#">系统设置<i class="icon-chevron-right"></i></a>
    </li>
    <li class="nav-header">
      客户管理
    </li>
    <li>
      <a href="#">游客列表<i class="icon-chevron-right"></i></a>
    </li>
    <li>
      <a href="#">生日提醒<i class="icon-chevron-right"></i></a>
    </li>
    <li class="nav-header">
      短信平台
    </li>
    <li>
      <a href="#">账号设置<i class="icon-chevron-right"></i></a>
    </li>
    <li>
      <a href="#">短信模板<i class="icon-chevron-right"></i></a>
    </li>
    <li>
      <a href="#">发送短信<i class="icon-chevron-right"></i></a>
    </li>
    <li>
      <a href="#">发送记录<i class="icon-chevron-right"></i></a>
    </li>
  </ul>
</div>
</#macro>
