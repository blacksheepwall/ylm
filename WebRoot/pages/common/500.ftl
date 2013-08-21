<#assign page_name="error-page"/>
<#include "module.ftl"/>
<#escape x as x?html>
  <@html title="500">
    <@body>
    <div class="main-body">
      <h2 class="error-title">500</h2>
    </div>
    </@body>
  </@html>
</#escape>
