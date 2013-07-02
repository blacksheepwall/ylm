<#-- 取消游客页 -->
<#assign page_name="order-cancel-tourist"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="取消游客">
    <@body>
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/order/">订单管理</a> <span class="divider">/</span></li>
          <li><a href="/order/info/?id=12345678">订单操作</a> <span class="divider">/</span></li>
          <li class="active">取消游客</li>
        </ul>
      </div>
      <div class="row-fluid">
        <div class="mod-body">
          <h5 class="mod-title">订单基本信息</h5>
          <div>
            <ul class="order-info clearfix">
              <li><strong>订单编号：</strong> YSL13042410560353</li>
              <li><strong>联系人：</strong> 张三</li>
              <li><strong>联系电话：</strong> YSL13042410560353</li>
              <li><strong>线路名称：</strong> 杭州直飞越南岘港风情五日之旅</li>
              <li><strong>团队编号：</strong> No123456</li>
              <li><strong>出发日期：</strong> 2013-07-02</li>
              <li><strong>产品经理：</strong> 王伟</li>
              <li><strong>团队计调：</strong> 王伟</li>
              <li><strong>预订人数：</strong> 10</li>
              <li><strong>订单状态：</strong> 锁定</li>
              <li><strong>锁定状态：</strong> 锁定</li>
              <li><strong>订单费用：</strong> 1000.00</li>
              <li><strong>已付金额：</strong> 800.00</li>
              <li><strong>余款金额：</strong> 200.00</li>
              <li><strong>截至付款：</strong> 2013.07.02</li>
              <li><strong>创建时间：</strong> 2013-07-02</li>
              <li><strong>创建人：</strong> 王伟</li>
              <li><strong>订单备注：</strong> </li>
            </ul>
          </div>
        </div>
        <div class="mod-body">
          <h5 class="mod-title">取消说明</h5>
          <textarea class="desc-value"></textarea>
          <h5 class="mod-title">选择取消游客</h5>
          <div id="J_user_list">
            <table class="table table-bordered user-list">
              <thead>
              <tr>
                <th>
                  <label><input type="checkbox" value="全选">全选</label>
                </th>
                <th>
                  类型
                </th>
                <th>
                  姓名
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
                  手机号码
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
                    <input type="checkbox">
                  </td>
                  <td>
                    林展科（成人）
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
                </#assign>
                <#noescape>${user_list}</#noescape>
                <#noescape>${user_list}</#noescape>
              </tbody>
            </table>
          </div>
        </div>
        <div class="action">
          <button class="btn btn-primary">确认</button>
          <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
