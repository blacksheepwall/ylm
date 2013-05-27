<#if sys_name??>
  <#include "template.ftl">
<script src="/js/jquery.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/scripts.js"></script>
<script src="${cfg_base_js_base}/require-jquery.js"></script>
<script src="${cfg_base_js_base}/jquery.json/jquery.json.js"></script>
<script src="${cfg_base_js_base}/underscore/underscore.js"></script>
</#if>
<#-- requirejs配置  -->
<script>
  unio = {
    cfg: {
      contextPath: '${cfg_context_path}',
      flashPath: '${cfg_base_flash}',
      version: '${cfg_version}'
    },
    url: {
      common: '${cfg_context_path}/common/',
      static: '${cfg_context_path}/static/'
    },
    fn: {},
    mod: {}
  };
  require.config({
    paths: {
      // 外部 module
      'lib': '${cfg_base_js}/lib',
      'libBase': '${cfg_base_js_base}',
      'libWidget': '${cfg_base_js_widget}',
      'cssBase': '${cfg_base_css}',
      'text': '${cfg_base_js_base}/require-text',
      'order': '${cfg_base_js_base}/require-order',
      // 业务 module
      'base': '${cfg_base_js_module}',
      // infrastructure
      'class': '${cfg_base_js_base}/class/class',
      'events': '${cfg_base_js_base}/class/events',
      // widgets & utilities
      'cookie': '${cfg_base_js_widget}/jquery.cookie/jquery.cookie',
      'store': '${cfg_base_js_widget}/store/store',
      'handlebars': '${cfg_base_js_widget}/handlebars/handlebars',
      'zclip': '${cfg_base_js_widget}/jquery.zclip/jquery.zclip',
      'datepicker': '${cfg_base_js_widget}/jquery.ui/jquery.ui.datepicker',
      'url': '${cfg_base_js_widget}/jquery.url/jquery.url',
      'form': '${cfg_base_js_widget}/jquery.form/jquery.form',
      'position': '${cfg_base_js_widget}/position/position',
      'stickyPanel': '${cfg_base_js_widget}/jquery.stickypanel/jquery.stickypanel'
    },
  <#--urlArgs: 'v=${cfg_version_js}'-->
    urlArgs: 'v=' + (+new Date()) + '${cfg_version_js}'
  });

  <#--定义单一的页面级js文件-->
  <#if sys_name??>
    <#assign jsFileUrl="base/${sys_name}/${page_name}" />
  </#if>
  <#if subsys_name??>
    <#assign jsFileUrl="base/${sys_name}/${subsys_name}/${page_name}" />
  </#if>
  require(['${jsFileUrl!""}']);
</script>
<#--/ requirejs配置  -->