<#if page_name??>
  <#include "template.ftl">
<script src="/js/base/require.js"></script>
<script src="/js/base/jquery.js"></script>
<script src="/js/base/jquery.json.js"></script>
<script src="/js/base/bootstrap.js"></script>
<script src="/js/base/underscore.js"></script>
<script src="/js/base/handlebars.js"></script>
<script src="/js/base/messenger.js"></script>
<script>
  tbds = {
    cfg: {
      contextPath: '${cfg_context_path}',
      flashPath: '${cfg_base_flash}',
      version: '${cfg_version}'
    },
    url: {
    },
    fn: {},
    mod: {}
  };
  requirejs.config({
    baseUrl: '/js/',
    paths: {
      'jquery': 'base/jquery',
      'form': 'base/jquery.form',
      'cookie': 'base/cookie',
      'store': 'base/store',
      'zclip': 'base/jquery.zclip',
      'scrollMonitor': 'base/scrollMonitor',
      'pagination': 'base/jqpagination/jqpagination',
      'dateTimePicker': 'base/dateTimePicker/bootstrap-datetimepicker',
      'placeholder': 'base/jquery.placeholder',
      'marquee': 'base/marquee',
      'treetable': 'base/jquery.treetable',
      'moment': 'base/moment',
//      'jstree': 'base/jstree/jquery.jstree',
//      'jqgrid': 'base/jqGrid/js/jquery.jqGrid.src'
      'url': 'base/url'
    },
    urlArgs: 'v=' /*+ (+new Date()) */ + '${cfg_version_js}'
  });
    <#assign jsFileUrl="module/${page_name}" />
  require(['module/common']);
  require(['${jsFileUrl!""}']);
</script>
</#if>