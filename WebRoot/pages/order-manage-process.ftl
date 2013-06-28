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
            <a class="btn btn-danger btn-small" href="/main/order-cancel-tourist"><i class="icon-remove"></i> 取消游客</a>
          </div>
          <div>
            <ul class="order-info clearfix">
              <li><strong>订单编号：</strong> YSL13042410560353</li>
              <li><strong>联系人：</strong> 张三</li>
              <li><strong>联系电话：</strong> YSL13042410560353</li>
              <li><strong>线路名称：</strong> 杭州直飞越南岘港风情五日之旅</li>
              <li><strong>团队编号：</strong> YGTGT001PA130513B</li>
              <li><strong>出发日期：</strong> YSL13042410560353</li>
              <li><strong>产品经理：</strong> YSL13042410560353</li>
              <li><strong>团队协调：</strong> YSL13042410560353</li>
              <li><strong>预订人数：</strong> YSL13042410560353</li>
              <li><strong>订单状态：</strong> YSL13042410560353</li>
              <li><strong>锁定状态：</strong> YSL13042410560353</li>
              <li><strong>订单费用：</strong> YSL13042410560353</li>
              <li><strong>已付金额：</strong> YSL13042410560353</li>
              <li><strong>余款金额：</strong> YSL13042410560353</li>
              <li><strong>截至付款：</strong> YSL13042410560353</li>
              <li><strong>创建时间：</strong> YSL13042410560353</li>
              <li><strong>创建人：</strong> YSL13042410560353</li>
              <li><strong>订单备注：</strong> YSL13042410560353</li>
            </ul>
          </div>
        </div>
        <ul id="J_tab" class="nav nav-tabs">
          <li class="active">
            <a href="#"><i class="icon-list"></i> 名单</a>
          </li>
          <li><a href="#"><i class="icon-share-alt"></i> 收款退款</a></li>
          <li><a href="#"><i class="icon-pencil"></i> 处理信息</a></li>
        </ul>
        <div id="J_tab_content">
          <div id="J_user_list">
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
                <#assign user_list>
              <tr>
                <td>
                  正常
                </td>
                <td>
                  林展科（成人）
                </td>
                <td>
                  Lin ZhanKe
                </td>
                <td>
                  男
                </td>
                <td>
                  <a href="">1000</a>
                </td>
                <td>
                  <p>身份证：330103195304060410</p>
                  <p>签发日期：</p>
                  <p>有效期至：</p>
                  <p>签发地</p>
                  <p>出生日期：1953-04-06</p>
                </td>
                <td>
                  浙江
                </td>
                <td>
                </td>
                <td>
                </td>
                <td>
                  <a href="">编辑</a> <a href="">附件</a>
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
                      <a href="">查看</a>
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
                      <a href="">查看</a>
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
                    <td>
                      <a href="">代理已签收</a>
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
                      <a href="">查看</a> <a href="">下载</a>
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
