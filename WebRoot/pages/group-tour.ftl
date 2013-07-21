<#-- 整团业务 -->
<#assign page_name="group-tour"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="整团业务">
    <@body>
    <div class="main-body clearfix">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li class="active">整团业务</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@group_tour_sidebar></@group_tour_sidebar>
        <div class="span10">
          <@group_tour_condition></@group_tour_condition>
          <div class="mod-body">
            <h5 class="mod-title">未结团整团</h5><a href="/main/group-team" class="group-team">所有团队 »</a>
            <div class="content">
              <table class="table table-hover table-bordered">
                <thead>
                <tr>
                  <th>
                    团队编号
                  </th>
                  <th>
                    线路名称
                  </th>
                  <th>
                    旅游天数
                  </th>
                  <th>
                    出发口岸
                  </th>
                  <th>
                    出发日期
                  </th>
                  <th>
                    计划
                  </th>
                  <th>
                    实际
                  </th>
                  <th>
                    计调状态
                  </th>
                  <th>
                    拼团
                  </th>
                </tr>
                </thead>
                <tbody>
                <tr>
                  <td>
                    <a href="/main/group-team-view" target="_blank">YGNHD039PS130408A</a>
                  </td>
                  <td>
                    夏威夷4晚6天
                  </td>
                  <td>
                    4晚6天
                  </td>
                  <td>
                    上海
                  </td>
                  <td>
                    2013-04-08
                  </td>
                  <td>
                    15人
                  </td>
                  <td>
                    18人
                  </td>
                  <td>
                    落实中
                  </td>
                  <td>
                    否
                  </td>
                </tr>
                </tbody>
              </table>
              <@pagination></@pagination>
            </div>
          </div>
          <div class="mod-body">
            <h5 class="mod-title">整团预报推荐</h5><a href="/main/group-forecast" class="group-team">所有报价 »</a>
            <div class="media clearfix">
              <a class="pull-left" href="/main/group-forecast-view">
                <img data-src="holder.js/140x140" class="img-rounded" alt="140x140" style="width: 140px; height: 140px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIwAAACMCAYAAACuwEE+AAAEIElEQVR4Xu3XwStlYQDG4e8WIsmGyEayxFr5961sZEXKgkRWVxIrzPSdOpM57nDfmXtvufPYzXi7x/zOM985ev1+/0fxpcCQBXrADFnKrCkADAhRAWCiXMbAMBAVACbKZQwMA1EBYKJcxsAwEBUAJsplDAwDUQFgolzGwDAQFQAmymUMDANRAWCiXMbAMBAVACbKZQwMA1EBYKJcxsAwEBUAJsplDAwDUQFgolzGwDAQFQAmymUMDANRAWCiXMbAMBAVACbKZQwMA1EBYKJcxsAwEBUAJsplDAwDUQFgolzGwDAQFQAmymUMDANRAWCiXMbAMBAVACbKZQwMA1EBYKJcxsAwEBUAJsplDAwDUQFgolzGwDAQFQAmymUMDANRAWCiXMbAMBAVACbKZQwMA1EBYKJcxsAwEBUAJsplDAwDUQFgolzGwDAQFQAmymUMDANRAWCiXMbAMBAVmAow19fX5erqquzv75fZ2dkPAbrfr38+Pz//tVtbWyt7e3tDh5v09Yb+wSYw/PZgjo+PS7/fL/Pz8wPB1O+dnJyUubm55vu9Xq8cHh6WlZWVBsnZ2Vm5ubkpu7u7ZX19/cvkk77elz/QhAffGky92RXCw8NDeX5+/gDm5eWlwfH6+voL1N3dXXO6tEBaUJubm2V7e/vT/JO+3oQtDHW5bw2m/RfW//WDwNS/f3p6ak6V+lVPmIuLi3J7e1sODg7KwsJCaVHVE2dmZqY5bba2tho87aOr+8ga1fWSx+BQd3MCo6kF0z5qdnZ2yuXlZXPKfAXm/SNqeXm5ObkGvd8MAvO315vAPR7pJaYSTPuYWV1dLRXM0dHR0GBq3fY9ZWlpqUHW/eqC+dfrjfSOjvnDphJMe8O77SqAjY2NT99hBr33dH/z6oL5l+uN+f6O/OOnEsz7Sm9vb7+dMI+Pj81vTfX0aR9B799p6s2/v79vTqbT09OyuLj44ZT50ztMvW56vZHf0TF/4H8Hpp4W7ftG27Z9yW1Piu5Lb/fRlID57Hpjvrdj+fipADOWMj50YAFgwIgKABPlMgaGgagAMFEuY2AYiAoAE+UyBoaBqAAwUS5jYBiICgAT5TIGhoGoADBRLmNgGIgKABPlMgaGgagAMFEuY2AYiAoAE+UyBoaBqAAwUS5jYBiICgAT5TIGhoGoADBRLmNgGIgKABPlMgaGgagAMFEuY2AYiAoAE+UyBoaBqAAwUS5jYBiICgAT5TIGhoGoADBRLmNgGIgKABPlMgaGgagAMFEuY2AYiAoAE+UyBoaBqAAwUS5jYBiICgAT5TIGhoGoADBRLmNgGIgKABPlMgaGgagAMFEuY2AYiAoAE+UyBoaBqAAwUS5jYBiICgAT5TIGhoGoADBRLmNgGIgKABPlMgaGgagAMFEuY2AYiAr8BEtvBLVi8MZpAAAAAElFTkSuQmCC">
              </a>
              <div class="media-body">
                <h4 class="media-heading"><a href="">雪山、香格里拉尊贵双飞五日游</a></h4>
                <div class="price-body">
                  <p>参考报价： <strong class="price">3299.00</strong> 每人</p>
                  <p>有效期：2013-05-01/2013-06-08</p>
                </div>
                <p><strong>行程天数：</strong>4晚5天 <strong class="sep">出发口岸：</strong>杭州 <strong class="sep">往返交通：</strong>飞机</span></p>
                <p><strong>有效期：</strong>2013-05-01/2013-06-08</p>
                <p><strong>适用客户：</strong>国企/政府单位   医疗   高新   媒体   教育   老年团体   学生团体 </p>
                <p><strong>出行目的：</strong>奖励旅游</p>
                <p class="text-error">产品经理推荐：安排杭州直飞丽江航班，节省交通时间、避免路途颠簸。全程精选优质酒店，并特别安排世界上最高的实景演出剧场－丽江《印象丽江秀》，让您藉由观赏大型的歌舞表演，深入了解当地文化，丰富您的旅程</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
