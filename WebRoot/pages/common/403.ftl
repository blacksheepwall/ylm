<#assign page_name="error-page"/>
<#include "module.ftl"/>
<#escape x as x?html>
  <@html title="403">
    <@body>
    <div class="main-body">
      <h2 class="error-title">403</h2>
    </div>
    </@body>
  </@html>
</#escape>
