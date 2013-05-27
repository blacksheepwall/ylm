<#-- 基础配置 -->
<#assign
cfg_develop = true
cfg_version = "1.0.1"
cfg_context_path = "/"
cfg_version_js = "8592571210"
cfg_version_css = "8592571210"
cfg_version_base_js = "8592571210"
>
<#if cfg_develop>
  <#assign
  cfg_base_js = "${cfg_context_path}/static/js"
  cfg_base_js_base = "${cfg_context_path}/static/js/lib/base"
  cfg_base_js_widget = "${cfg_context_path}/static/js/lib/widget"
  cfg_base_js_module = "${cfg_context_path}/static/js/module"
  cfg_base_css = "${cfg_context_path}/static/css"
  cfg_base_flash = "${cfg_context_path}/static/flash"
  cfg_image_css = "${cfg_context_path}/static/images"
  >
<#else>
  <#assign
  cfg_base_js = "${cfg_context_path}/static/built/js"
  cfg_base_js_base = "${cfg_context_path}/static/built/js/lib/base"
  cfg_base_js_widget = "${cfg_context_path}/static/built/js/lib/widget"
  cfg_base_js_module = "${cfg_context_path}/static/built/js/module"
  cfg_base_css = "${cfg_context_path}/static/built/css"
  cfg_base_flash = "${cfg_context_path}/static/built/flash"
  cfg_image_css = "${cfg_context_path}/static/built/images"
  >
</#if>
