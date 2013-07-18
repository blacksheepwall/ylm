<#-- 订单确认页 -->
<#assign page_name="order-confirm"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="订单确认">
    <@body nohead=true>
    <div class="main-body">
      <h1 class="top-title">浙江中山国际旅行社代理预订确认单</h1>
      <ul class="order-info clearfix">
        <li><strong>甲方（组团社）：浙江中山国际旅行社</strong></li>
        <li><strong>乙方（代理社）：桐乡市假日旅行社有限责任公司</strong></li>
        <li><strong>经办人：朱佳佳</strong></li>
        <li><strong>预订人：潘岚</strong></li>
        <li><strong>联系电话：0571087025678</strong></li>
        <li><strong>联系电话：0571087025678</strong></li>
      </ul>
      <h2 class="sub-title">预订信息</h2>
      <ul class="order-info multi clearfix">
        <li><strong>订单编号：YSL13032011180210</strong></li>
        <li><strong>团队编号：YSL13032011180210</strong></li>
        <li><strong>产品名称：魅力台湾豪华6日游（北高）</strong></li>
        <li><strong>出发日期：2013.06.27</strong></li>
        <li><strong>开票日期：2013-06-10</strong></li>
        <li><strong>截至送签：2013-06-10</strong></li>
        <li><strong>旅游天数：4天</strong></li>
        <li><strong>预订人数：2</strong></li>
        <li><strong>订单费用：柒仟肆佰元整</strong></li>
        <li><strong>合同类型：</strong></li>
        <li><strong>应付金额：7400.00</strong></li>
        <li><strong>已付金额：7400.00</strong></li>
        <li><strong>未付余款：7400.00</strong></li>
        <li><strong>最迟付款：2013.06.27</strong></li>
        <li><strong>订单备注：</strong></li>
      </ul>
      <h2 class="sub-title">订单名单及费用</h2>
      <table class="table table-bordered user-list">
        <thead>
        <tr>
          <th>
            编号
          </th>
          <th>
            类型
          </th>
          <th>
            费用
          </th>
          <th>
            姓名
          </th>
          <th>
            姓名拼音
          </th>
          <th>
            性别
          </th>
          <th>
            出身日期
          </th>
          <th>
            证件类型
          </th>
          <th>
            证件号码
          </th>
          <th>
            备注
          </th>
        </tr>
        </thead>
        <tbody>
          <#assign user_list>
          <tr>
            <td>
              1
            </td>
            <td>
              成人
            </td>
            <td>
              1000
            </td>
            <td>
              林展科
            </td>
            <td>
              Lin ZhanKe
            </td>
            <td>
              男
            </td>
            <td>
              1994-09-17
            </td>
            <td>
              <p>身份证</p>
            </td>
            <td>
              330103195304060410
            </td>
            <td>
            </td>
          </tr>
          </#assign>
          <#noescape>${user_list}</#noescape>
          <#noescape>${user_list}</#noescape>
        </tbody>
      </table>
      <div>
        <h2 class="sub-title">确认说明</h2>
        <div class="section">
          <p>1.     协议单位在收到单位后即确认回传，并在协议工作日内付款，否则以后团款都需现结，望配合！</p>
          <p>2.     无协议单位团款必须在团队出发之前支付完结或填写欠款确认证明，否则不能发团。</p>
          <p>3.     机票于6月 8日确认开票，请仔细核对名单，并确保提供的名单与证件号码相符，团队机票一经确认开票不得改签、不得更改、不得退票。</p>
          <p>4.     旅游目的地为日本、韩国、台湾及欧美团队的请盖章确认担保书，谢谢！</p>
          <p>5.     根据旅游管理条例，与旅客签订旅游合同，并需书面告之游客是拼团，如需我社提供合同，请在“我社合同”打√注明，谢谢配合。</p>
        </div>
      </div>
      <div class="account-body">
        <h2 class="sub-title">汇款账户</h2>
        <div class="section clearfix">
          <div class="party">
            <p>公司账户：</p>
            <p>开户名：浙江中山国际旅行社有限责任公司</p>
            <p>账号：    020 1010 400 21745</p>
            <p>开户行：杭州农业银行城西支行行</p>
          </div>
          <div class="party">
            <p>个人储蓄卡：</p>
            <p>开户名：俞丽娜</p>
            <p>账  号：62284 8032 2891 836411</p>
            <p>开户行：中国农业银行杭州吴山支行</p>
          </div>
        </div>
      </div>
      <div>
        <h2 class="sub-title">欠款确认证明</h2>
        <div class="section">
          <p class="ti2">
            <span class="hl-red">桐乡市假日旅行社有限责任公司</span> 参加浙江中山国际旅行社有限责任公司 <span class="hl-red">ZJZST-130614BR6</span>
            团，共计团费： <span class="hl-red">柒仟肆佰元 （ 7400.00 元）</span>，已付金额： <span class="hl-red">零（ 0.00 元）</span>，尚欠款金额：
            <span class="hl-red">柒仟肆佰元（ 7400.00 元）</span>，经协商于 <span class="hl-red">2013 年6 月14日</span>前付清欠款。
          </p>
          <div class="clearfix">
            <div class="pull-left party">
              <p>浙江中山国际旅行社有限责任公司</p>
              <p>2013年06月 07日</p>
            </div>
            <div class="pull-right party">
              <p>欠款单位：桐乡市假日旅行社有限责任公司p</p>
              <p>年 月 日（公司盖章及签字确认）</p>
            </div>
          </div>
        </div>
      </div>
      <div>
        <h2 class="sub-title">担保书</h2>
        <div class="section clearfix">
          <p>浙江中山国际旅行社有限责任公司：</p>
          <p class="ti2">兹证明订单确认单游客名单人员为我公司参加贵公司组织的 ZJZST-130614BR6（魅力台湾豪华6日游（北高））旅游团的客人，我公司保证这些客人均经我社严格审查，将按时随团回国；如发生客人滞留不归或未按时随团回国及擅自离团现象，一切责任由我公司承担，同意支付贵公司每人人民币伍万元的风险赔偿金。</p>
          <div class="pull-right">
            <p>单位名称：桐乡市假日旅行社有限责任公司</p>
            <p>确认人：        （公司盖章）</p>
          </div>
        </div>
      </div>
      <p class="order-confirm">请对上述内容仔细审核，如无异意请盖章确认并回传我社,传真号码：0571-87026789，谢谢配合！</p>
    </div>
    </@body>
  </@html>
</#escape>
