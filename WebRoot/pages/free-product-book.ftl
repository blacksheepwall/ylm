<#-- 机+酒产品预订页面 -->
<#assign page_name="product-book"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="机+酒产品预订页面">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/ziyouxing/">自由行</a> <span class="divider">/</span></li>
          <li><a href="/ziyouxing/detail/?id=-1">预订产品：香港4晚5日至尊逍遥之旅</a> <span class="divider">/</span></li>
          <li class="active">预订</li>
        </ul>
      </div>
      <div class="row-fluid">
        <nav id="J_flow_steps" class="flow-steps">
          <ol class="num6">
            <li class="crt">
              <span class="first"><strong class="num">1</strong>预订人数</span>
            </li>
            <li>
              <span><strong class="num">2</strong>选择产品</span>
            </li>
            <li>
              <span><strong class="num">3</strong>附加项目</span>
            </li>
            <li>
              <span><strong class="num">4</strong>填写名单</span>
            </li>
            <li>
              <span><strong class="num">5</strong>核对信息</span>
            </li>
            <li class="last">
              <span><strong class="num">6</strong>预订成功</span>
            </li>
          </ol>
        </nav>
        <div class="product-name">预订产品：香港4晚5日至尊逍遥之旅</div>
        <div class="row-fluid">
          <div class="span9">
            <div class="form-body step1">
              <div class="mod-body">
                <div class="form-item form-horizontal">
                  <h5 class="mod-sub-title">日期/人数</h5>
                  <ol class="date-member">
                    <li>2013-08-29：杭州--香港 </li>
                    <li>2013-08-29：杭州--香港 </li>
                    <li>2013-08-29：杭州--香港 </li>
                  </ol>
                  <div>
                    <strong>成人人数： </strong><input type="text" class="input-small">&nbsp;<strong> 小孩人数： </strong><input type="text" class="input-small">
                  </div>
                </div>
              </div>
              <div class="action text-center">
                <a id="J_cancel" class="btn">返回</a>
                <a id="J_to_step2" class="btn btn-primary">下一步</a>
              </div>
            </div>
            <#macro step1 next_id="" prev_id="" class="" next_text="" prev_text="">
            <div class="form-body ${class}">
              <div class="mod-body">
                <div class="form-item">
                  <h5 class="mod-sub-title">机票</h5>
                  <h6><strong class="hl14 label label-success">推荐航班</strong><a id="J_edit_flight" class="edit-info" href="javascript:;"><i class="icon-pencil"></i> 更改航班</a></h6>
                  <table class="table table-bordered user-list">
                    <thead>
                    <tr>
                      <th>
                        出发日期
                      </th>
                      <th>
                        时间/目的地
                      </th>
                      <th>
                        抵达时间
                      </th>
                      <th>
                        航班号
                      </th>
                      <th>
                        机型
                      </th>
                      <th>
                        仓位
                      </th>
                      <th>
                        数量
                      </th>
                      <th>
                        差价
                      </th>
                    </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>
                          2013-08-29
                        </td>
                        <td>
                          07:45
                          杭州--萧山国际机场
                        </td>
                        <td>
                          11:20
                          香港--启德国际机场
                        </td>
                        <td>
                          港龙航空
                          KA937
                        </td>
                        <td>
                        </td>
                        <td>
                          经济舱
                        </td>
                        <td>
                          3
                        </td>
                        <td>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
                <div class="form-item">
                  <h5 class="mod-sub-title">酒店</h5>
                  <h6>
                    <span class="text-warning">香港</span>
                    <strong class="hl14 label label-success">推荐酒店</strong><a id="J_edit_hotel" class="edit-info" href="javascript:;"><i class="icon-pencil"></i> 更改酒店</a>
                  </h6>
                  <table class="table table-bordered user-list">
                    <thead>
                    <tr>
                      <th width="180">
                        酒店名称
                      </th>
                      <th width="60">
                        房型
                      </th>
                      <th width="40">
                        早餐
                      </th>
                      <th width="90">
                        床型
                      </th>
                      <th width="40">
                        宽带
                      </th>
                      <th width="100">
                        入住日期
                      </th>
                      <th width="100">
                        退房日期
                      </th>
                      <th width="80">
                        数量
                      </th>
                      <th width="80">
                        差价
                      </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                      <td>
                        香港丽华大酒店
                      </td>
                      <td>
                        标准间
                      </td>
                      <td>
                        双早
                      </td>
                      <td>
                        双床/大床
                      </td>
                      <td>
                        收费
                      </td>
                      <td>
                        2013-08-29
                      </td>
                      <td>
                        2013-09-01
                      </td>
                      <td>
                        3
                      </td>
                      <td>
                      </td>
                    </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="action text-center">
                <a id="${prev_id}" class="btn">${prev_text}</a>
                <a id="${next_id}" class="btn btn-primary">${next_text}</a>
              </div>
            </div>
            </#macro>
            <#noescape ><@step1 class="hide" next_id="J_to_step3" prev_id="J_back_to_step1" next_text="下一步" prev_text="上一步"></@step1></#noescape>
            <div class="form-body step3 hide">
              <div class="mod-body">
                <div class="form-item">
                <h5 class="mod-sub-title">附加项目</h5>
                <table class="table table-bordered user-list">
                  <thead>
                  <tr>
                    <th>
                      类型
                    </th>
                    <th width="250">
                      项目名称
                    </th>
                    <th>
                      单价
                    </th>
                    <th>
                      使用日期
                    </th>
                    <th>
                      份数
                    </th>
                    <th>
                      小计
                    </th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>
                      送关
                    </td>
                    <td>
                      <div class="pro-name">
                        <a href="">L签客人送关服务</a>
                        <div class="popover bottom">
                          <div class="arrow"></div>
                          <div class="popover-content">
                            <p><strong>L签客人送关服务</strong></p>
                            <p>1.请最晚于出发前3个工作日提供准确的出行人中英文姓名、出生日期、出生地、证件号码、签发地、证件有效期。</p>
                            <p>2.不接受新疆出生或签发的客人预订。</p>
                            <p>3.最晚出发前1天通知送关信息(含送关人及联系方式集合时间和地点），协助L签客人以旅游团队形式通过中国边防检查。</p>
                            <p>4.2013-06-06至2090-12-31 :不接受新疆出生或签发的客人预订。</p>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td>
                      120.00
                    </td>
                    <td>
                      <select>
                        <option value="2013-07-21">2013-07-21</option>
                        <option value="2013-07-21">2013-07-21</option>
                        <option value="2013-07-21">2013-07-21</option>
                        <option value="2013-07-21">2013-07-21</option>
                        <option value="2013-07-21">2013-07-21</option>
                      </select>
                    </td>
                    <td>
                      <select>
                        <option value="3份">3份</option>
                        <option value="3份">3份</option>
                        <option value="3份">3份</option>
                        <option value="3份">3份</option>
                        <option value="3份">3份</option>
                      </select>
                    </td>
                    <td>
                      360.00
                    </td>
                  </tr>
                  <tr>
                    <td>
                      门票
                    </td>
                    <td>
                      <div class="pro-name">
                        <a href="">迪斯尼套票（2大1小）</a>
                        <div class="popover bottom">
                          <div class="arrow"></div>
                          <div class="popover-content">
                            <p><strong>L签客人送关服务</strong></p>
                            <p>1.请最晚于出发前3个工作日提供准确的出行人中英文姓名、出生日期、出生地、证件号码、签发地、证件有效期。</p>
                            <p>2.不接受新疆出生或签发的客人预订。</p>
                            <p>3.最晚出发前1天通知送关信息(含送关人及联系方式集合时间和地点），协助L签客人以旅游团队形式通过中国边防检查。</p>
                            <p>4.2013-06-06至2090-12-31 :不接受新疆出生或签发的客人预订。</p>
                          </div>
                        </div>
                      </div>
                    </td>
                    <td>
                      120.00
                    </td>
                    <td>
                      <select>
                        <option value="2013-07-21">2013-07-21</option>
                        <option value="2013-07-21">2013-07-21</option>
                        <option value="2013-07-21">2013-07-21</option>
                        <option value="2013-07-21">2013-07-21</option>
                        <option value="2013-07-21">2013-07-21</option>
                      </select>
                    </td>
                    <td>
                      <select>
                        <option value="3份">3份</option>
                        <option value="3份">3份</option>
                        <option value="3份">3份</option>
                        <option value="3份">3份</option>
                        <option value="3份">3份</option>
                      </select>
                    </td>
                    <td>
                      360.00
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
              </div>
              <div class="action text-center">
                <a id="J_back_to_step2" class="btn">上一步</a>
                <a id="J_to_step4" class="btn btn-primary">下一步</a>
              </div>
            </div>
            <div class="form-body step4 hide">
              <div class="mod-body form-horizontal">
                <div class="form-item">
                  <ul class="order-people clearfix">
                    <li><strong>游客联系人：</strong><input type="text"></li>
                    <li><strong>手机号码：</strong><input type="text"></li>
                    <li class="desc"><strong>预订备注：</strong><textarea></textarea></li>
                  </ul>
                </div>
                <#assign people>
                <div class="form-item">
                  <h5 class="mod-sub-title">成人一：</h5>
                  <ul class="people clearfix">
                    <li><strong>中文姓名：</strong><input type="text"></li>
                    <li><strong>英文姓名：</strong><input type="text"></li>
                    <li><strong>性别：</strong>
                      <label class="radio inline">
                        <input type="radio" name="optionsRadios" checked="">男
                      </label>
                      <label class="radio inline">
                        <input type="radio" name="optionsRadios">女
                      </label>
                    </li>
                    <li><strong>证件类型：</strong>
                      <select>
                        <option value="">身份证</option>
                        <option value="">护照</option>
                        <option value="">港澳通行证</option>
                        <option value="">台湾通行证</option>
                      </select>
                    </li>
                    <li class="id-card"><strong>证件号码：</strong><input type="text"></li>
                    <li><strong>出生日期：</strong><input type="text"></li>
                    <li><strong>签发日期：</strong><input type="text"></li>
                    <li><strong>有效期至：</strong><input type="text"></li>
                    <li><strong>签发地：</strong><input type="text"></li>
                    <li><strong>户籍：</strong><input type="text"></li>
                    <li><strong>手机电话：</strong><input type="text"></li>
                    <li><strong>备注：</strong><textarea></textarea></li>
                  </ul>
                </div>
                </#assign>
                <#noescape >${people}</#noescape>
                <#noescape >${people}</#noescape>
              </div>
              <div class="action text-center">
                <a id="J_back_to_step3" class="btn">上一步</a>
                <a id="J_to_step5" class="btn btn-primary">下一步</a>
              </div>
            </div>
            <#--<#noescape ><@step1 id="J_to_step4" class="hide" next_text="提交订单"></@step1></#noescape>-->
            <div class="form-body step5 hide">
              <div class="mod-body">
                <div class="form-item form-horizontal">
                  <h5 class="mod-sub-title">产品信息</h5>
                  <ul class="detail-list clearfix">
                    <li><strong>产品编号： </strong>YCJIS58PA130518B</li>
                    <li><strong>产品名称： </strong>香港4晚5日至尊逍遥之旅</li>
                    <li><strong>出发口岸： </strong>杭州</li>
                    <li><strong>出发日期： </strong>2013-08-29</li>
                  </ul>
                </div>
                <@product_book_content></@product_book_content>
                <div class="form-item">
                  <h5 class="mod-sub-title">游客名单</h5>
                  <ul class="detail-list clearfix">
                    <li><strong>游客联系人：</strong>王伟</li>
                    <li><strong>手机号码：</strong>13913911136</li>
                    <li><strong>预订备注：</strong></li>
                  </ul>
                  <table class="table table-bordered user-list">
                    <thead>
                    <tr>
                      <th>
                        姓名
                      </th>
                      <th>
                        拼音
                      </th>
                      <th>
                        性别
                      </th>
                      <th>
                        出生日期
                      </th>
                      <th>
                        户籍
                      </th>
                      <th>
                        证件
                      </th>
                      <th>
                        手机号码
                      </th>
                      <th>
                        备注
                      </th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
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
                    </tr>
                    </tbody>
                  </table>
                </div>
              </div>
              <div class="action text-center">
                <a id="J_back_to_step4" class="btn">上一步</a>
                <a id="J_to_step6" class="btn btn-primary">提交订单</a>
              </div>
            </div>
            <div class="form-body step6 text-center hide">
              <div class="mod-body">
                <h4 class="success-title"><i class="icon-ok"></i> 预订成功</h4>
                <div><strong>订单号：YSL13052903300683</strong></div>
                <div><strong>可进行以下操作</strong></div>
                <div class="action text-center">
                  <a href="/main/order-free-travel-preview" class="btn btn-info">打印预订单</a>
                  <a class="btn btn-info">订单查看</a>
                </div>
              </div>
            </div>
          </div>
          <div class="mod-body span3">
            <h4 class="mod-title">预订信息</h4>
            <ol class="book-side-info">
              <li><strong>出发日期：</strong>2013-08-29</li>
              <li><strong>成人人数：</strong>2人</li>
              <li><strong>小孩人数：</strong>1人</li>
              <li><strong>香港用房：</strong>1间</li>
              <li><strong>澳门用房：</strong>1间</li>
              <li><strong>L签客人送关服务：</strong>3份</li>
              <li><strong>迪士尼成人票：</strong>3份</li>
              <li><strong>华泰携程港澳旅游保险：</strong>3份</li>
            </ol>
            <div class="book-side-total">
              <p>合计费用：6999.00</p>
              <p>人均费用：6999.00</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <#--航班选择-->
    <div id="J_select_flight" class="modal hide select-flight-modal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3>航班选择</h3>
      </div>
      <div class="modal-body">
        <div class="flight-body clearfix">
          <div class="flight-info">
            <table>
              <thead>
              <th width="100"></th>
              <th width="70"></th>
              <th width="150"></th>
              <th width="150"></th>
              <th width="100"></th>
              </thead>
              <tr>
                <td>2013-05-28</td>
                <td>07:45</td>
                <td>杭州/萧山国际机场</td>
                <td>港龙航空/KA937</td>
                <td>经济舱</td>
              </tr>
              <tr>
                <td></td>
                <td>07:45</td>
                <td>杭州/萧山国际机场</td>
                <td>港龙航空/KA937</td>
                <td>经济舱</td>
              </tr>
            </table>
          </div>
          <div class="flight-price">
            <p class="value">差价：￥300.00</p>
            <button class="btn btn-success">选择</button>
          </div>
        </div>
        <div class="flight-body clearfix">
          <div class="flight-info">
            <table>
              <thead>
              <th width="100"></th>
              <th width="70"></th>
              <th width="150"></th>
              <th width="150"></th>
              <th width="100"></th>
              </thead>
              <tr>
                <td>2013-05-28</td>
                <td>07:45</td>
                <td>杭州/萧山国际机场</td>
                <td>港龙航空/KA937</td>
                <td>经济舱</td>
              </tr>
              <tr>
                <td></td>
                <td>07:45</td>
                <td>杭州/萧山国际机场</td>
                <td>港龙航空/KA937</td>
                <td>经济舱</td>
              </tr>
            </table>
          </div>
          <div class="flight-price">
            <p class="value">差价：￥300.00</p>
            <button class="btn btn-success">选择</button>
          </div>
        </div>
      </div>
    </div>
    <#--酒店选择-->
    <div id="J_select_hotel" class="modal hide select-hotel-modal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h3>酒店选择</h3>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">
          <thead>
          <th width="120">酒店名称</th>
          <th width="90">房型</th>
          <th width="50">早餐</th>
          <th width="100">床型</th>
          <th width="50">宽带</th>
          <th width="70">差价</th>
          <th width="80">数量</th>
          <th width="160">备注</th>
          <th width="60">选择</th>
          </thead>
          <tr>
            <td>香港湾仔皇悦酒店</td>
            <td>标准间</td>
            <td>不含</td>
            <td>双床/大床</td>
            <td>收费</td>
            <td class="hl-red">+100</td>
            <td>
              <select>
                <option value="1间">1间</option>
                <option value="2间">2间</option>
                <option value="3间">3间</option>
              </select>
            </td>
            <td></td>
            <td>
              <button class="btn btn-success">选择</button>
            </td>
          </tr>
        </table>
      </div>
    </div>
    <script>
      productId = '${productId!5000}';
    </script>
    </@body>
  </@html>
</#escape>
