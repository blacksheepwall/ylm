<#if page_name??>
  <#include "template.ftl">
<script src="/js/base/jquery.js"></script>
<script src="/js/base/jquery.json.js"></script>
<script src="/js/base/require.js"></script>
<script src="/js/base/bootstrap.js"></script>
<script src="/js/base/underscore.js"></script>
<script src="/js/base/handlebars.js"></script>
<script>
  tbds = {
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
  requirejs.config({
    baseUrl: '/js/',
    paths: {
      'cookie': 'base/cookie',
      'store': 'base/store',
      'zclip': 'base/jquery.zclip',
      'stickyPanel': 'base/jquery.stickypanel'
    },
    urlArgs: 'v=' + (+new Date()) + '${cfg_version_js}'
  });
    <#assign jsFileUrl="module/${page_name}" />
  require(['${jsFileUrl!""}']);
</script>
</#if>