<#-- 自由行产品查看 -->
<#assign page_name="free-travel-view"/>
<#assign product={'name':"东航直飞巴厘岛5晚6日至尊逍遥之旅"}/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="${product.name}_自由行产品查看">
    <@body>
    <div class="main-body clearfix">
    <ul class="breadcrumb">
      <li><a href="/main/">首页</a> <span class="divider">/</span></li>
      <li><a href="/main/free-travel">自由行</a> <span class="divider">/</span></li>
      <li class="active">${product.name}</li>
    </ul>
    <div class="center">
    <div class="basic-info">
      <div class="title-group">
        <h2>
          <span class="label label-warning">跟团游</span>
          <span class="product-title">${product.name}</span>
          <span class="product-subtitle">（2晚钻石五星酒店+3晚独栋泳池别墅，宝格丽海景下午茶+龙目岛离岛）</span>
        </h2>
        <div class="product-num">产品编号：YCJIS58PA130518B</div>
        <div class="action-bar">
        <#--<a id="J_favorite" href="/u/addFavorite/?id=${productId}&type=${type}">收藏</a>-->
          <a id="J_favorite" href="javascript:;"><i class="icon-folder-open-alt"></i> 收藏</a>
        </div>
      </div>
      <div class="clearfix">
        <div class="carousel pull-left" id="carousel-373696">
          <ol class="carousel-indicators">
            <li data-slide-to="0" data-target="#carousel-373696">
            </li>
            <li data-slide-to="1" data-target="#carousel-373696" class="active">
            </li>
            <li data-slide-to="2" data-target="#carousel-373696">
            </li>
          </ol>
          <div class="carousel-inner">
            <div class="item">
              <img alt="" src="/img/8e71e654bbdb_640_426.jpg">
              <div class="carousel-caption">
                <h4>
                  阳光海滨
                </h4>
                <p>
                  Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                </p>
              </div>
            </div>
            <div class="item active">
              <img alt="" src="/img/8e71e654bbdb_640_426.jpg">
              <div class="carousel-caption">
                <h4>
                  阳光海滨2
                </h4>
                <p>
                  Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                </p>
              </div>
            </div>
            <div class="item">
              <img alt="" src="/img/8e71e654bbdb_640_426.jpg">
              <div class="carousel-caption">
                <h4>
                  阳光海滨3
                </h4>
                <p>
                  Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                </p>
              </div>
            </div>
          </div> <a data-slide="prev" href="#carousel-373696" class="left carousel-control">‹</a> <a data-slide="next" href="#carousel-373696" class="right carousel-control">›</a>
        </div>
        <div class="sidebar pull-right">
          <div class="product-meta">
            <div class="title"><span class="key">产品类型：</span> 机票+酒店</div>
            <ol class="meta-list clearfix">
              <li class="item"><span class="key">目的地：</span> 香港</li>
              <li class="item"><span class="key">天数：</span> 3晚4天</li>
              <li class="item"><span class="key">出发口岸(地)：</span> 杭州</li>
              <li class="item"><span class="key">旅行证件：</span> 护照</li>
              <li class="item"><span class="key">产品经理：<a href="">王伟</a></li>
              <li class="item"><span class="key">产品助理：<a href="">王伟</a></li>
            </ol>
          </div>
          <@pm_recommend></@pm_recommend>
          <div class="book-body clearfix">
            <div class="product-date">
              <span class="date-title">日期</span>
              <select class="date-select">
                <option>2013.06.07</option>
                <option>2013.06.07</option>
                <option>2013.06.07</option>
                <option>2013.06.07</option>
              </select>
            </div>
            <div><span class="key">原价：</span>588元</div>
            <div>现价：588元 <a href="">起价说明</a></div>
            <div>计划：12人</div>
            <div>剩余：12人</div>
            <div>截至预订时间：2013-5-09  13：00</div>
            <div>截至送签日期：2013-6-09  13：00</div>
            <div class="book-now form-horizontal">
              <div class="clearfix">
                <div class="people-num">成人 <input type="text" value="1"></div>
                <div class="people-num">小孩成人 <input type="text" value="0"></div>
                <button class="btn btn-primary" type="button">立刻预订</button>
              </div>
            </div>
          </div>
        </div>
      <#-- 日期控件 -->
      </div>
    </div>
    <div>
      <ul id="J_tab" class="nav nav-tabs">
        <li class="active">
          <a href="#route"><i class="icon-info-sign"></i> 产品信息</a>
        </li>
        <li><a href="#description"><i class="icon-file-alt"></i> 费用说明</a></li>
        <li><a href="#notice"><i class="icon-th-large"></i> 附加项目</a></li>
        <li><a href="#prepare"><i class="icon-map-marker"></i> 行程信息</a></li>
        <li><a href="#order"><i class="icon-ok-circle"></i> 预订须知</a></li>
        <li><a href="#relate"><i class="icon-exclamation-sign"></i> 签订须知</a></li>
        <li><a href="#relate"><i class="icon-random"></i> 相关产品</a></li>
      </ul>
      <div id="J_tab_content">

      </div>
      <div data-spy="scroll" data-target="#J_tab" data-offset="0" class="product-body">
        <h5 id="route">产品行程</h5>
        <div>
              <pre>
        早上在杭州集合出发—驱车前往临海（车程约3.5小时）—午餐—游览桃渚古城、桃江十三渚
        杭州—桃渚
        7：30—12：00 早上杭州市区集合，前往临海（车程约4小时）
        12：30  抵达桃渚古城（游览时间1.5小时），在明清时期的宅院午餐。餐后在古城逛逛，走走老街，爬爬烽火台。
        14：00  游览旁边的桃江十三渚（游览时间2小时），爬上岩顶可以俯瞰美丽的沙洲田园。细心留意路边的岩石，那些不同的形状是千万年前凝固时地球的语言。
        17：30  前往桃渚镇搜罗晚餐。
        18：30  到达龙湾海滨，海风轻拂的夜晚
        19：30  在海边点起篝火，开个小型的party
        ● 【桃江十三渚】
        桃江十三渚风景区位于临海市桃渚镇，东临东海，北界三门，南距台州市区仅30公里，交通十分便捷。桃江十三渚集渚上田园风光、火山遗迹等资源于一体，峰岩怪石、洞天林立，是桃渚省级风景名胜区和临海国家地质公园的重要组成部分。
        ● 【桃渚古城】
        省级风景名胜区。由抗倭，天下奇观珊瑚岩，小雁荡武坑，海滨浴场等众多景观组成，面积约150平方公里，有200多个景点。
        ● 【龙湾海滨】
        国家AAA级桃渚龙湾海滨景区(台州海滨公园)位于浙江省临海东部海岸线上，距临海市区50公里，距台州市区20公里，紧邻全国文保单位桃渚军事古城，是临海桃渚国家地质公园和国家桃渚风景名胜区的重要组成部分，台州市唯一的海滨浴场。
        1、登上形态怪异的火山岩顶，俯瞰旁边流淌的桃江沙洲，留下我们最放的身影。漫步在明清老街古宅，感受那里的古朴气息。在安静的海滨，继续只属于我们的狂欢。
        2、我们晚上选择住在海滨，伴着海浪声入睡，肯定别有一番情调。也可以早起来迎接一场海滨日出，让一天都充满色彩！
              </pre>

        </div>
        <h5 id="description">产品说明</h5>
        <div>
          标志说明：【景点】 〖自费〗 『购物点』  ◎ 外观途观   ●入内参观   △远观车观  ★特别安排   ◆行程自费  ◇推荐自费
          <img src="http://183.129.158.180:8080/tbss_image/201304/834e802a2281.jpg" alt="" class="img-polaroid">
        </div>
        <h5 id="notice">签证须知</h5>
        <div>
              <pre>
        一、预订须知
        交通：
        1.合同一经签订且付全款。
        2.车程时间以当日实际所用时间为准。
        3.本产品如因淡季或收客人数较少，有可能与相近方向的发班线路拼车出游，届时请游客见谅。
        住宿：
        1.酒店正常办理入住时间为14:00，在此之前到达，酒店如有空房即可安排入住，如没有您可以先将行李寄存在前台，贵重物品随身携带。
        2.关于房差：多数酒店不能加床，如果您是单人出游，可以和工作人员提前预留，出发当天现付导游，由导游安排。
        游览:
        1.景点游览、自由活动、购物店停留的时间以当天实际游览为准。
        2.行程中需自理门票和当地导游推荐项目，请自愿选择参加。
        3.请您仔细阅读本行程，根据自身条件选择适合自己的旅游线路，出游过程中，如因身体健康等自身原因需放弃部分行程的，或游客要求放弃部分住宿、交通的，均视为自愿放弃，已发生费用不予退还，放弃行程期间的人身安全由旅游者自行负责。
        4.团队游览中不允许擅自离团（自由活动除外），中途离团视同游客违约，按照合同总金额的20%赔付旅行社，由此造成未参加行程内景点、用餐、房、车等费用不退，旅行社亦不承担游客离团时发生意外的责任。
        5.如遇台风、暴雪等不可抗因素导致无法按约定行程游览，行程变更后增加或减少的费用按旅行社团队操作实际发生的费用结算。
        6.出游过程中，如产生退费情况，以退费项目旅行社折扣价为依据，均不以挂牌价为准。
        购物：此团为纯玩团，全程不进店。
        费用说明：
        1.如遇国家政策性调整门票、交通价格等，按调整后的实际价格结算。
        2.赠送项目因航班、天气等不可抗因素导致不能赠送的，费用不退。
        3.景点门票为旅行社折扣价，如持优待证件（如老年证、军官证、教师证等）产生折扣退费的，按实际差额退还。
        出团通知： 出团通知最晚于出团前1天发送，若能提前确定，我们将会第一时间通知您。
        意见反馈： 请配合导游如实填写当地的意见单，不填或虚填者归来后投诉将无法受理。
        其他说明： 此行程非本社独立成团，与其他旅行社联合发团
        二、预订提示
        病患者、孕妇及行动不便者预订提示
        1.为了确保旅游顺利出行，防止旅途中发生人身意外伤害事故，请旅游者在出行前做一次必要的身体检查，如存在下列情况，请遵医嘱：
        （1）传染性疾病患者，如传染性肝炎、活动期肺结核、伤寒等传染病人；
        （2）心血管疾病患者，如严重高血压、心功能不全、心肌缺氧、心肌梗塞等病人；
        （3）脑血管疾病患者，如脑栓塞、脑出血、脑肿瘤等病人；
        （4）呼吸系统疾病患者，如肺气肿、肺心病等病人；
        （5）精神病患者，如癫痫及各种精神病人；
        （6）严重贫血病患者，如血红蛋白量水平在50克/升以下的病人；
        （7）大中型手术的恢复期病患者；
        （8）孕妇及行动不便者。
        老年旅游者预订提示
        1、70周岁以上老年人预订出游，须与我公司签订《健康证明》并有家属或朋友陪同方可出游。
        未成年旅游者预订提示
        1.未满18周岁的旅游者请由家属陪同参团。
        外籍人士预订提示
        本产品网上报价适用持有大陆居民身份证的游客。如您持有其他国家或地区的护照，请来电咨询，提供护照号码和个人基本信息；
              </pre>
        </div>
        <h5 id="prepare">出行准备</h5>
        <div>
              <pre>
        一、出行须知
        1.在各景点自由活动时，请记住集合时间、集合地点、以及导游的电话。
        2.路边的小吃卫生没有保障，旅行当中食物不要吃得太杂，用餐地点选择干净卫生的饭店。
        3.一般景区里面的的消费水平要比景区外面高，您可以在入园前买好带入。
        4.登山以穿登山鞋、布鞋、球鞋为宜，穿皮鞋和塑料底鞋容易滑跌。为安全计，登山时可买一竹棍或手杖。
        5.为了保护风景区的清洁卫生，不可随地乱扔垃圾、废物，沿途皆有垃圾池。
        6.海滨活动必须注意安全，未成年人不得脱离家长监护游玩。
        二、温馨提示
        1.由于旅游旺季团队周期紧密，因此导游将在您出发的前一天晚上20：30之前主动和您联系，沟通旅游相关事宜，若此时间尚未接到导游电话，请即时致电门店人员。
        2.为保证您的旅途愉快圆满，如在途中遇见任何问题可随时致电我社24小时质检电话，我们将及时帮您协商解决，感谢您的支持。
        3.以上线路为散客拼团，为了增加成团率，届时将由杭州各家旅行社统一收客后联合出团，并轮流进行操作。
        4.出团请携带好有效证件证，强烈建议游客购买旅游意外险。
        5.请您在报名时留下您的联系方式，并保证畅通，如有特殊情况，便于我们能及时和您联系.
              </pre>
        </div>
        <h5 id="order">预订订单</h5>
        <div>
          <table class="table table-bordered">
            <thead>
            <tr>
              <th>
                订单编号
              </th>
              <th>
                人数
              </th>
              <th>
                联系人
              </th>
              <th>
                联系电话
              </th>
              <th>
                订单金额
              </th>
              <th>
                已付款
              </th>
              <th>
                订单状态
              </th>
              <th>
                合同状态
              </th>
              <th>
                预订人
              </th>
              <th>
                预订时间
              </th>
              <th>
                操作
              </th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td>
                <a>YSL13050310010390</a>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
              </td>
              <td>
                <a><i class="icon-download"></i> 操作</a>
              </td>
            </tr>
            </tbody>
          </table>
        </div>
        <h5 id="relate">相关线路</h5>
        <div>
          【设计理念】台州自古以"海上名山"著称。是中国大陆太阳最早升起的地方。自然风光雄奇秀丽，人文景观源远流长。名山古刹时掩时 ...
        </div>
      </div>
    </div>
    </div>
    </div>
    </@body>
  </@html>
</#escape>
