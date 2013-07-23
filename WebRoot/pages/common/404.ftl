<#assign hide_nav=true/>
<#assign page_name="404"/>
<#include "../common/module.ftl"/>
<#escape x as x?html>
<@html>
<@body>
<@main_con>
    <a href="${request.contextPath}/portal/views/index">
        <img src="${request.contextPath}/static/images/common/404.png" alt="404" title="404"/>
    </a>
</@main_con>
</@body>
</@html>
</#escape>
