<#assign hide_nav=true/>
<#include "../common/module.ftl"/>
<#escape x as x?html>
<@html>
<@body>
<@main_con>
    <a href="${request.contextPath}/main.do">
        <img src="${request.contextPath}/static/images/common/500.png" alt="500" title="500"/>
    </a>
</@main_con>
</@body>
</@html>
</#escape>
