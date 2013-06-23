<#include "config.ftl">
<#macro html target="" title="">
<!DOCTYPE html>
<html>
  <@head title="${title!'TBDS'}"
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
  <link rel="shortcut icon" href="/img/favicon.ico">
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
  <script src="/js/base/html5shiv.js"></script>
  <![endif]-->
  <#include "css.ftl">
  <#nested />
</head>
</#macro>

<#macro body class="" id="" nohead=false>
<body class="${class}" <#if id!="">id="${id}"</#if>>
  <#if nohead>
    <#nested>
  <#else>
    <#include "header.ftl"/>
    <#nested>
  <a id="J_page_to_top" class="global-totop" title="回到顶部"></a>
    <#include "footer.ftl"/>
  </#if>
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

<#macro manage_sidebar>
<div class="span2">
  <ul class="nav nav-list manage-sidebar">
    <li class="nav-header">
      <i class="icon-home"></i> 公司信息
    </li>
    <li <#if "manage-edit-company"==page_name>class="active"</#if>>
      <a href="/manage/edit/">信息修改<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "manage-add-user"==page_name>class="active"</#if>>
      <a href="/manage/adduser/">新增系统用户<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "manage-users"==page_name>class="active"</#if>>
      <a href="/manage/manageusers/">系统用户管理<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "manage-system-setup"==page_name>class="active"</#if>>
      <a href="/manage/setup/">系统设置<i class="icon-chevron-right"></i></a>
    </li>
    <li class="nav-header">
      <i class="icon-user-md"></i> 客户管理
    </li>
    <li <#if "manage-guest-list"==page_name>class="active"</#if>>
      <a href="/manage/guests/">游客列表<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "manage-birthday-remind"==page_name>class="active"</#if>>
      <a href="/manage/birthday/">生日提醒<i class="icon-chevron-right"></i></a>
    </li>
    <li class="nav-header">
      <i class="icon-envelope"></i> 短信平台
    </li>
    <li>
      <a href="#">账号设置<i class="icon-chevron-right"></i></a>
    </li>
    <li>
      <a href="#">短信模板<i class="icon-chevron-right"></i></a>
    </li>
    <li>
      <a href="#">发送短信<i class="icon-chevron-right"></i></a>
    </li>
    <li>
      <a href="#">发送记录<i class="icon-chevron-right"></i></a>
    </li>
  </ul>
</div>
</#macro>

<#macro user_center_sidebar>
<div class="span2">
  <ul class="nav nav-list manage-sidebar">
    <li class="nav-header">
      <i class="icon-shopping-cart"></i> 交易信息
    </li>
    <li <#if "user-center-myorder"==page_name>class="active"</#if>>
      <a href="/u/orders/">我的订单<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "user-center-performance"==page_name>class="active"</#if>>
      <a href="/u/performance/">业绩汇总<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "user-center-guest-list"==page_name>class="active"</#if>>
      <a href="/u/guests/">游客名单<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "user-center-favorite"==page_name>class="active"</#if>>
      <a href="/u/myfavorite/">我的收藏<i class="icon-chevron-right"></i></a>
    </li>
    <li class="nav-header">
      <i class="icon-comments"></i> 站内消息
    </li>
    <li <#if "user-center-unread"==page_name>class="active"</#if>>
      <a href="/u/unreadmsg/">未读消息<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "user-center-send-message"==page_name>class="active"</#if>>
      <a href="/u/sendmsg/">发送消息<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "user-center-message-list"==page_name>class="active"</#if>>
      <a href="/u/msglist/">消息列表<i class="icon-chevron-right"></i></a>
    </li>
    <li class="nav-header">
      <i class="icon-envelope"></i> 个人信息
    </li>
    <li <#if "user-center-setup"==page_name>class="active"</#if>>
      <a href="/u/setup/">个人设置<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "user-center-password"==page_name>class="active"</#if>>
      <a href="/u/changepass/">修改密码<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "user-center-shortcut-menu"==page_name>class="active"</#if>>
      <a href="/u/shortcut/">快捷菜单<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "user-center-log"==page_name>class="active"</#if>>
      <a href="/u/log/">登录日志<i class="icon-chevron-right"></i></a>
    </li>
    <li>
      <a href="#">短信模板<i class="icon-chevron-right"></i></a>
    </li>
    <li>
      <a href="#">发送短信<i class="icon-chevron-right"></i></a>
    </li>
    <li>
      <a href="#">发送记录<i class="icon-chevron-right"></i></a>
    </li>
  </ul>
</div>
</#macro>

<#macro finance_sidebar>
<div class="span2">
  <ul class="nav nav-list manage-sidebar">
    <li class="nav-header">
      <i class="icon-shopping-cart"></i> 交易信息
    </li>
    <li <#if "finance-payable-amount"==page_name>class="active"</#if>>
      <a href="/main/finance-payable-amount/">应付款统计<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "finance-payable-detail"==page_name>class="active"</#if>>
      <a href="/main/finance-payable-detail/">应付款明细<i class="icon-chevron-right"></i></a>
    </li>
    <li class="nav-header">
      <i class="icon-money"></i> 付款管理
    </li>
    <li <#if "finance-add-remittance"==page_name>class="active"</#if>>
      <a href="/main/finance-add-remittance/">新增汇款<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "finance-remittance-list"==page_name>class="active"</#if>>
      <a href="/main/finance-remittance-list/">汇款列表<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "finance-refund-list"==page_name>class="active"</#if>>
      <a href="/main/finance-refund-list/">退款列表<i class="icon-chevron-right"></i></a>
    </li>
    <li class="nav-header">
      <i class="icon-bar-chart"></i> 业务报表
    </li>
    <li <#if "user-center-setup"==page_name>class="active"</#if>>
      <a href="/u/setup/">总报表<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "user-center-password"==page_name>class="active"</#if>>
      <a href="/u/changepass/">月报表<i class="icon-chevron-right"></i></a>
    </li>
    <li <#if "user-center-shortcut-menu"==page_name>class="active"</#if>>
      <a href="/u/shortcut/">年报表<i class="icon-chevron-right"></i></a>
    </li>
  </ul>
</div>
</#macro>

<#macro inland_travel_module>
<div class="destination mt10 bg_lgray">
<h2 class="fc_white f14">国内旅游</h2>
<#list regions as rg>
<div class="des_sort mr5 clearfix ov">
  <h3>${rg.name}</h3>
  <p class="lh18 threeline">
  	<#list rg.citys as city>
    <a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=${city.cityName}&amp;searchBeanVo.productMainTypeId=1">${city.cityName}</a>
    </#list>
  </p>
</div>
</#list>
<div class="des_sortsep pr">
  <h3><span class="fr mr10 mt5 pngFix"></span>周边游</h3>
  <div class="des_sortcon none">
    <dl>
      <dt><span class="fc_orange fb">古镇</span></dt>
      <dd>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=周庄&amp;searchBeanVo.productMainTypeId=1">周庄</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=同里&amp;searchBeanVo.productMainTypeId=1">同里</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=甪直&amp;searchBeanVo.productMainTypeId=1">甪直</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=西塘&amp;searchBeanVo.productMainTypeId=1">西塘</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=乌镇&amp;searchBeanVo.productMainTypeId=1">乌镇</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=南浔&amp;searchBeanVo.productMainTypeId=1">南浔</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">山水</span></dt>
      <dd>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=千岛湖&amp;searchBeanVo.productMainTypeId=1">千岛湖</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=大明山&amp;searchBeanVo.productMainTypeId=1">大明山</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=莫干山&amp;searchBeanVo.productMainTypeId=1">莫干山</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=太湖&amp;searchBeanVo.productMainTypeId=1">太湖</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=天目山&amp;searchBeanVo.productMainTypeId=1">天目山</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=雁荡山&amp;searchBeanVo.productMainTypeId=1">雁荡山</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">园林</span></dt>
      <dd>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=苏州&amp;searchBeanVo.productMainTypeId=1">苏州</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=扬州&amp;searchBeanVo.productMainTypeId=1">扬州</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=安吉百草园&amp;searchBeanVo.productMainTypeId=1">安吉百草园</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">乐园</span></dt>
      <dd>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=杭州乐园&amp;searchBeanVo.productMainTypeId=1">杭州乐园</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=中华恐龙园&amp;searchBeanVo.productMainTypeId=1">中华恐龙园</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=上海欢乐谷&amp;searchBeanVo.productMainTypeId=1">上海欢乐谷</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=横店影视城&amp;searchBeanVo.productMainTypeId=1">横店影视城</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=杭州宋城&amp;searchBeanVo.productMainTypeId=1">杭州宋城</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">城市</span></dt>
      <dd>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=上海&amp;searchBeanVo.productMainTypeId=1">上海</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=南京&amp;searchBeanVo.productMainTypeId=1">南京</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=杭州&amp;searchBeanVo.productMainTypeId=1">杭州</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=宁波&amp;searchBeanVo.productMainTypeId=1">宁波</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=绍兴&amp;searchBeanVo.productMainTypeId=1">绍兴</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=安吉&amp;searchBeanVo.productMainTypeId=1">安吉</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=无锡&amp;searchBeanVo.productMainTypeId=1">无锡</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">海滨</span></dt>
      <dd>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=普陀山&amp;searchBeanVo.productMainTypeId=1">普陀山</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=朱家尖&amp;searchBeanVo.productMainTypeId=1">朱家尖</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=宁波象山&amp;searchBeanVo.productMainTypeId=1">宁波象山</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=桃花岛&amp;searchBeanVo.productMainTypeId=1">桃花岛</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=连云港&amp;searchBeanVo.productMainTypeId=1">连云港</a></em>
      </dd>
    </dl>
  </div>
</div>
<div class="des_sortsep pr">
  <h3><span class="fr mr10 mt5 pngFix"></span>出境游</h3>
  <div class="des_sortcon none">
    <dl>
      <dt><span class="fc_orange fb">港澳</span></dt>
      <dd>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=香港特别行政&amp;searchBeanVo.productMainTypeId=3">香港特别行政</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=澳门特别行政&amp;searchBeanVo.productMainTypeId=3">澳门特别行政</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">台湾</span></dt>
      <dd>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=台湾&amp;searchBeanVo.productMainTypeId=3">台湾</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=屏东&amp;searchBeanVo.productMainTypeId=3">屏东</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=高雄&amp;searchBeanVo.productMainTypeId=3">高雄</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=花莲&amp;searchBeanVo.productMainTypeId=3">花莲</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=桃园&amp;searchBeanVo.productMainTypeId=3">桃园</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=台中&amp;searchBeanVo.productMainTypeId=3">台中</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=嘉义&amp;searchBeanVo.productMainTypeId=3">嘉义</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=台北&amp;searchBeanVo.productMainTypeId=3">台北</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">日本</span></dt>
      <dd>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">韩国</span></dt>
      <dd>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">欧洲</span></dt>
      <dd>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=英国&amp;searchBeanVo.productMainTypeId=2">英国</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=西班牙&amp;searchBeanVo.productMainTypeId=2">西班牙</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=法国&amp;searchBeanVo.productMainTypeId=2">法国</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=荷兰&amp;searchBeanVo.productMainTypeId=2">荷兰</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=意大利&amp;searchBeanVo.productMainTypeId=2">意大利</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=瑞士&amp;searchBeanVo.productMainTypeId=2">瑞士</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=雅典&amp;searchBeanVo.productMainTypeId=2">雅典</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=比利时&amp;searchBeanVo.productMainTypeId=2">比利时</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=德国&amp;searchBeanVo.productMainTypeId=2">德国</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=马德里&amp;searchBeanVo.productMainTypeId=2">马德里</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=里斯本&amp;searchBeanVo.productMainTypeId=2">里斯本</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=柏林&amp;searchBeanVo.productMainTypeId=2">柏林</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=柏林&amp;searchBeanVo.productMainTypeId=2">柏林</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=法国&amp;searchBeanVo.productMainTypeId=2">法国</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">澳洲</span></dt>
      <dd>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=奥克兰&amp;searchBeanVo.productMainTypeId=2">奥克兰</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=皇后镇&amp;searchBeanVo.productMainTypeId=2">皇后镇</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=澳大利亚&amp;searchBeanVo.productMainTypeId=2">澳大利亚</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=基督城&amp;searchBeanVo.productMainTypeId=2">基督城</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=罗托鲁阿&amp;searchBeanVo.productMainTypeId=2">罗托鲁阿</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=布里斯班&amp;searchBeanVo.productMainTypeId=2">布里斯班</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=墨尔本&amp;searchBeanVo.productMainTypeId=2">墨尔本</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=悉尼&amp;searchBeanVo.productMainTypeId=2">悉尼</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=凯恩斯&amp;searchBeanVo.productMainTypeId=2">凯恩斯</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=皇后镇&amp;searchBeanVo.productMainTypeId=2">皇后镇</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=澳大利亚&amp;searchBeanVo.productMainTypeId=2">澳大利亚</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">美洲</span></dt>
      <dd>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=美国&amp;searchBeanVo.productMainTypeId=2">美国</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=华盛顿&amp;searchBeanVo.productMainTypeId=2">华盛顿</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=洛杉矶&amp;searchBeanVo.productMainTypeId=2">洛杉矶</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=拉斯维加斯&amp;searchBeanVo.productMainTypeId=2">拉斯维加斯</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=旧金山&amp;searchBeanVo.productMainTypeId=2">旧金山</a></em>
        <em><a rel="nofollow" href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=纽约&amp;searchBeanVo.productMainTypeId=2">纽约</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">海岛</span></dt>
      <dd>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=普吉岛&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">普吉岛</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=宿雾&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">宿雾</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=巴厘岛&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">巴厘岛</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=长滩岛&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">长滩岛</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=塞班岛&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">塞班岛</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=文莱&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">文莱</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">东南亚</span></dt>
      <dd>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=越南&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">越南</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=柬埔寨&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">柬埔寨</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=泰国&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">泰国</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=槟城&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">槟城</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=吉隆坡&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">吉隆坡</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=兰卡威&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">兰卡威</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=沙巴&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">沙巴</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=马来西亚&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">马来西亚</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=新加坡&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">新加坡</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=菲律宾&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">菲律宾</a></em>
      </dd>
    </dl>
    <dl>
      <dt><span class="fc_orange fb">非洲中东</span></dt>
      <dd>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=迪拜&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">迪拜</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=土耳其&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">土耳其</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=埃及&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">埃及</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=南非&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">南非</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=肯尼亚&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">肯尼亚</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=以色列&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">以色列</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=突尼斯&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">突尼斯</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=伊朗&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">伊朗</a></em>
        <em><a href="http://www.youlema.com/search?type=tourLine&amp;searchBeanVo.isResult=false&amp;searchBeanVo.isHaveProduct=has&amp;keyWords=毛里求斯&amp;searchBeanVo.productMainTypeId=2" rel="nofollow">毛里求斯</a></em>
      </dd>
    </dl>
  </div>
</div>
</div>
</#macro>

<#macro mock_pagination>
<div class="pagination pagination-centered">
  <ul>
    <li><a href="#">«</a></li>
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    <li><a href="#">4</a></li>
    <li><a href="#">5</a></li>
    <li><a href="#">»</a></li>
  </ul>
</div>
</#macro>