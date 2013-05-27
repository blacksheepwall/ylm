<#-- 设置页面加载的样式文件 -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/bootstrap-responsive.min.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
<#if sys_name??&&sys_name=="home">
<link type="text/css" rel="stylesheet" href="${cfg_base_css}/common/base.css?v=${cfg_version_css}"/>
<#else>
<link type="text/css" rel="stylesheet" href="${cfg_base_css}/common/common.css?v=${cfg_version_css}"/>
</#if>

<#--定义单一的页面级样式文件-->
<#if sys_name??>
  <#assign cssFileUrl="${cfg_base_css}/${sys_name}.css?v=${cfg_version_css}" />
</#if>
<#if subsys_name??>
  <#assign cssFileUrl="${cfg_base_css}/${subsys_name}.css?v=${cfg_version_css}" />
</#if>
<link type="text/css" rel="stylesheet" href="${cssFileUrl!""}"/>
