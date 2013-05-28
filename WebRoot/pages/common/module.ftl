<#include "config.ftl">
<#macro html target="">
<!DOCTYPE html>
<html>
  <@head title="TBDS"
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

<#macro body class="" id="">
<body class="${class}" <#if id!="">id="${id}"</#if>>
  <#include "header.ftl"/>
  <#nested>
<a id="J_page_to_top" class="global-totop" title="回到顶部"></a>
  <#include "footer.ftl"/>
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