<#-- 订单操作页 -->
<#assign page_name="order-manage-process"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="订单操作">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/order/">订单管理</a> <span class="divider">/</span></li>
          <li class="active">订单操作</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div class="mod-body">
          <h5 class="mod-title">订单基本信息</h5>
          <div class="action-list">
            <a class="btn btn btn-small" href="/main/order-group" target="_blank"><i class="icon-reorder"></i> 预订单</a>
            <a class="btn btn btn-small" href="/main/order-confirm" target="_blank"><i class="icon-ok"></i> 确认单</a>
            <a class="btn btn btn-small" href="/main/order-group-preview" target="_blank"><i class="icon-info"></i> 出团通知</a>
            <button class="btn btn-warning btn-small" type="button"><i class="icon-pencil"></i> 修改联系人</button>
            <a class="btn btn-danger btn-small" href="/order/cancel/?id=${order.orderId}"><i class="icon-remove"></i> 取消游客</a>
          </div>
          <div>
            <#macro user_card_popover dept="" name="" tel="" phone="">
              <div class="popover top">
                <div class="arrow"></div>
                <i class="icon icon-remove" title="关闭"></i>
                <div class="popover-content">
                  <img src="/img/logo.png" alt="">
                  <p>部门：${dept}</p>
                  <p>姓名：${name}</p>
                  <p>电话：${tel}</p>
                  <p>手机：${phone}</p>
                </div>
                <div class="popover-action">
                  <a href="" class="btn btn-small">站内短信</a>
                  <a href="" class="btn btn-small">手机短信</a>
                </div>
              </div>
            </#macro>
            <ul id="J_order_info" class="order-info clearfix">
              <li><strong>订单编号：</strong>${order.orderNumber}</li>
              <li><strong>联系人：</strong> <a href="javascript:;">${order.contact}</a><#noescape ><@user_card_popover name="${order.contact}"></@user_card_popover></#noescape></li>
              <li><strong>联系电话：</strong>${order.contactMobile}</li>
              <li><strong>线路名称：</strong>${order.productName}</li>
              <li><strong>团队编号：</strong>${order.teamNumber}</li>
              <li><strong>出发日期：</strong><#if order.leaveDate??>${order.leaveDate?string('yyyy-MM-dd')}</#if></li>
              <li>
                <strong>产品经理：</strong> <a href="javascript:;">${order.productManager}</a><#noescape ><@user_card_popover name="${order.productManager}"></@user_card_popover></#noescape>
              </li>
              <li><strong>团队协调：</strong> <a href="javascript:;">${order.coordinator}</a><#noescape ><@user_card_popover name="${order.coordinator}"></@user_card_popover></#noescape></li>
              <li><strong>预订人数：</strong>${order.subscribeCount}</li>
              <li><strong>订单状态：</strong>${order.status.value}</li>
              <li><strong>锁定状态：</strong>${order.lockStatus}</li>
              
              
              <li><strong>订单费用：</strong>${(order.orderPrice)!0}</li>
              <li><strong>已付金额：</strong>${order.paidPrice!0}</li>
              <li><strong>余款金额：</strong>${(order.notPaid)!0}</li>
              <li><strong>截至付款：</strong><#if order.finalPayDate??>${order.finalPayDate?string('yyyy-MM-dd')}</#if></li>
              <li><strong>创建时间：</strong><#if order.createTime??>${order.createTime?string('yyyy-MM-dd')}</#if></li>
              <li><strong>创建人：</strong> <a href="javascript:;">${order.createOperator}</a><#noescape ><@user_card_popover name="${order.createOperator}"></@user_card_popover></#noescape></li>
              <li><strong>订单备注：</strong>  ${(order.orderMemo)!}</li>
            </ul>
          </div>
        </div>
        <ul id="J_tab" class="nav nav-tabs">
          <li class="active">
            <a href="#"><i class="icon-list"></i> 预订内容</a>
          </li>
          <li><a href="#"><i class="icon-group"></i> 游客名单</a></li>
          <li><a href="#"><i class="icon-share-alt"></i> 收款退款</a></li>
          <li><a href="#"><i class="icon-pencil"></i> 处理信息</a></li>
        </ul>
        <div id="J_tab_content">
          <div id="J_order_content">
            <@product_book_content></@product_book_content>
          </div>
          <div id="J_user_list" style="display: none;">
            <table class="table table-bordered user-list">
              <thead>
              <tr>
                <th>
                  状态
                </th>
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
                  费用金额
                </th>
                <th>
                  证件
                </th>
                <th>
                  户籍
                </th>
                <th>
                  手机号码
                </th>
                <th>
                  备注
                </th>
                <th>
                  操作
                </th>
              </tr>
              </thead>
              <tbody>
                <#list order.customers.resultList as cust>
              <tr>
                <td>
                  ${cust.status}
                </td>
                <td>
                  ${cust.name}
                </td>
                <td>
                  ${cust.pinyin}
                </td>
                <td>
                  ${cust.sex}
                </td>
                <td>
                  <div class="price">
                    <a class="j-price" href="javascript:;">${cust.amount}</a>
                    <div class="popover bottom">
                      <div class="arrow"></div>
                      <div class="popover-content">
                        <p class="price-detail"><strong>费用明细：</strong>林展科</p>
                        <table class="table table-striped table-condensed">
                          <thead>
                          <tr>
                            <th>
                              类型
                            </th>
                            <th>
                              项目
                            </th>
                            <th>
                              单价
                            </th>
                            <th>
                              数量
                            </th>
                            <th>
                              小计
                            </th>
                          </tr>
                          </thead>
                          <tbody>
                          <tr>
                            <td>预订项目</td>
                            <td>成人价</td>
                            <td>5888.00</td>
                            <td>1</td>
                            <td>5888.00</td>
                          </tr>
                          <tr>
                            <td>可选项目</td>
                            <td>单房差</td>
                            <td>5888.00</td>
                            <td>1</td>
                            <td>5888.00</td>
                          </tr>
                          <tr>
                            <td>可选项目</td>
                            <td>保险</td>
                            <td>5888.00</td>
                            <td>1</td>
                            <td>5888.00</td>
                          </tr>
                          <tr>
                            <td>优惠</td>
                            <td>促销优惠</td>
                            <td>5888.00</td>
                            <td>1</td>
                            <td>5888.00</td>
                          </tr>
                          <tr>
                            <td>损失</td>
                            <td>退订门票</td>
                            <td>5888.00</td>
                            <td>1</td>
                            <td>5888.00</td>
                          </tr>
                          <tr>
                            <td colspan="3"></td>
                            <td><strong>合计</strong></td>
                            <td><strong>5888.00</strong></td>
                          </tr>
                          </tbody>
                        </table>
                      </div>
                      <div class="popover-action">
                        <a href="javascript:;" class="btn btn-small j-close">关闭</a>
                      </div>
                    </div>
                  </div>
                </td>
                <td>
                  <p>身份证：${cust.certificate.certificateNumber}</p>
                  <p>签发日期：${cust.certificate.issueDate?string("yyyy-MM-dd")}</p>
                  <p>有效期至：${cust.certificate.expiryDate?string("yyyy-MM-dd")}</p>
                  <p>签发地：${cust.certificate.issuePlace}</p>
                  <p>出生日期：${cust.certificate.birthday}</p>
                </td>
                <td>
                  ${cust.household}
                </td>
                <td>
                ${cust.mobile}
                </td>
                <td>
                ${cust.memo}
                </td>
                <td>
                  <a href=""><i class="icon-pencil"></i> 编辑 </a><a href=""><i class="icon-file-alt"></i> 附件</a>
                </td>
              </tr>
              </#list>
              </tbody>
            </table>
          </div>
          <div id="J_refund" style="display: none;">
            <div class="mod-body">
              <h5 class="mod-title">订单付款记录</h5>
              <table class="table table-bordered user-list">
                <thead>
                <tr>
                  <th>
                    收款单编号
                  </th>
                  <th>
                    方式
                  </th>
                  <th>
                    金额
                  </th>
                  <th>
                    备注
                  </th>
                  <th>
                    提交人
                  </th>
                  <th>
                    提交时间
                  </th>
                  <th>
                    状态
                  </th>
                  <th>
                    查看
                  </th>
                </tr>
                </thead>
                <tbody>
                  <#assign user_list>
                  <tr>
                    <td>
                    </td>
                    <td>
                      汇款
                    </td>
                    <td>
                      3000.00
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
                      <a href=""><i class="icon-eye-open"></i> 查看</a>
                    </td>
                  </tr>
                  </#assign>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                </tbody>
              </table>
            </div>
            <div class="mod-body">
              <h5 class="mod-title">订单退款记录</h5>
              <table class="table table-bordered user-list">
                <thead>
                <tr>
                  <th>
                    退款金额
                  </th>
                  <th>
                    提交时间
                  </th>
                  <th>
                    提交人
                  </th>
                  <th>
                    计调审核
                  </th>
                  <th>
                    产品助理审核
                  </th>
                  <th>
                    财务审核
                  </th>
                  <th>
                    退款状态
                  </th>
                  <th>
                    出纳
                  </th>
                  <th>
                    付款时间
                  </th>
                  <th>
                    查看
                  </th>
                </tr>
                </thead>
                <tbody>
                  <#assign user_list>
                  <tr>
                    <td>
                      200.00
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
                      <a href=""><i class="icon-eye-open"></i> 查看</a>
                    </td>
                  </tr>
                  </#assign>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                </tbody>
              </table>
            </div>
          </div>
          <div id="J_process_result" style="display: none;">
            <div class="mod-body">
              <div>
                <ul class="process-info clearfix">
                  <li><strong>创建人：</strong> 张三</li>
                  <li><strong>创建时间：</strong> </li>
                  <li><strong>订单状态：</strong> 已确认</li>
                  <li><strong>锁定状态：</strong> </li>
                  <li><strong>操作人：</strong> </li>
                  <li><strong>操作时间：</strong> </li>
                  <li><strong>操作说明：</strong> </li>
                  <li><strong>保留操作人：</strong> </li>
                  <li><strong>保留操作时间：</strong> </li>
                  <li><strong>保留操作说明：</strong> </li>
                  <li><strong>取消人：</strong> </li>
                  <li><strong>取消时间：</strong> </li>
                  <li><strong>取消说明：</strong> </li>
                </ul>
              </div>
            </div>
            <div class="mod-body">
              <h5 class="mod-title">合同信息</h5>
              <div class="action-list">
                <button class="btn btn-success btn-small" type="button"><i class="icon-pencil"></i> 合同编辑</button>
              </div>
              <table class="table table-bordered user-list">
                <thead>
                <tr>
                  <th>
                    合同编号
                  </th>
                  <th>
                    签订人
                  </th>
                  <th>
                    签订时间
                  </th>
                  <th>
                    备注
                  </th>
                  <th>
                    状态
                  </th>
                </tr>
                </thead>
                <tbody>
                  <#list contracts as ct>
                  <tr>
                    <td>
                    ${ct.contractNo}
                    </td>
                    <td>
                    ${ct.signPerson}
                    </td>
                    <td>
                    <#if ct.signDate??>${ct.signDate?string('yyyy-MM-dd')}</#if>
                    </td>
                    <td>
                    ${ct.memo}
                    </td>
                    <td>
                      <a href="">${order.contractStatus}</a>
                    </td>
                  </tr>
                  </#list>
                </tbody>
              </table>
            </div>
            <div class="mod-body">
              <h5 class="mod-title">订单附件</h5>
              <div class="action-list">
                <button class="btn btn-success btn-small" type="button"><i class="icon-paper-clip"></i> 新增附件</button>
              </div>
              <table class="table table-bordered user-list">
                <thead>
                <tr>
                  <th>
                    附件类型
                  </th>
                  <th>
                    附件名称
                  </th>
                  <th>
                    文件类型
                  </th>
                  <th>
                    上传人
                  </th>
                  <th>
                    上传时间
                  </th>
                  <th>
                    操作
                  </th>
                </tr>
                </thead>
                <tbody>
                  <#assign user_list>
                  <tr>
                    <td>
                      合同
                    </td>
                    <td>
                      合同复印件（订单编号）
                    </td>
                    <td>
                      gif
                    </td>
                    <td>
                      张三
                    </td>
                    <td>
                      2012-6-20 14：23
                    </td>
                    <td>
                      <a href=""><i class="icon-eye-open"></i> 查看</a> <a href=""><i class="icon-download"></i> 下载</a>
                    </td>
                  </tr>
                  </#assign>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                </tbody>
              </table>
            </div>
            <div class="mod-body">
              <h5 class="mod-title">操作日志</h5>
              <table class="table table-bordered user-list">
                <thead>
                <tr>
                  <th>
                    序号
                  </th>
                  <th>
                    操作时间
                  </th>
                  <th>
                    操作人
                  </th>
                  <th>
                    操作结果
                  </th>
                </tr>
                </thead>
                <tbody>
                  <#assign user_list>
                  <tr>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                    <td>
                    </td>
                  </tr>
                  </#assign>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                  <#noescape>${user_list}</#noescape>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
