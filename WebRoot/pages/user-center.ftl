<#-- 用户中心页 -->
<#assign page_name="user-center"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="用户中心">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li class="active">用户中心</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 manage-body">
          <div class="user-info clearfix">
            <div class="user-avatar pull-left">
              <a href="#">
                <img data-src="holder.js/80x80"
                     src="data:image/png;base64,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">
              </a>
            </div>
            <div class="user-detail clearfix">
              <label class="control-label">姓名：王伟</label>
              <label class="control-label">固定电话：13913913911</label>
              <label class="control-label">手机号码：13913913911</label>
              <label class="control-label">传真号码：13913913911</label>
              <label class="control-label">电子邮箱：13913913911</label>
              <label class="control-label">QQ号码：13913913911</label>
              <label class="control-label">登录账户：wangwei</label>
              <label class="control-label">系统角色：系统管理员</label>
              <label class="control-label">最近登录：2013年6月14日 22:18:27</label>
            </div>
            <div class="user-panel">
              <a href="javascript:;">设置头像</a>
              <a href="javascript:;">修改密码</a>
              <a href="javascript:;">修改个人信息</a>
            </div>
          </div>
          <div class="clearfix">
            <h5 class="mod-title title-black">未读消息</h5>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  序号
                </th>
                <th>
                  标题
                </th>
                <th>
                  发送人
                </th>
                <th>
                  发送人
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  1
                </td>
                <td>
                  2
                </td>
                <td>
                  3
                </td>
                <td>
                  4
                </td>
              </tr>
              </tbody>
            </table>
          </div>
          <div class="clearfix">
            <h5 class="mod-title title-black">最近订单</h5>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  订单编号
                </th>
                <th>
                  类型
                </th>
                <th>
                  产品名称
                </th>
                <th>
                  出团日期
                </th>
                <th>
                  人数
                </th>
                <th>
                  联系人
                </th>
                <th>
                  预订时间
                </th>
                <th>
                  订单状态
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  1
                </td>
                <td>
                  2
                </td>
                <td>
                  3
                </td>
                <td>
                  4
                </td>
                <td>
                  1
                </td>
                <td>
                  2
                </td>
                <td>
                  3
                </td>
                <td>
                  4
                </td>
              </tr>
              </tbody>
            </table>
          </div>
          <div class="clearfix">
            <h5 class="mod-title title-black">我的收藏</h5>
            <table class="table table-hover table-bordered">
              <thead>
              <tr>
                <th>
                  产品名称
                </th>
                <th>
                  类型
                </th>
                <th>
                  天数
                </th>
                <th>
                  最低价格
                </th>
                <th>
                  出团日期
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  1
                </td>
                <td>
                  2
                </td>
                <td>
                  3
                </td>
                <td>
                  4
                </td>
                <td>
                  1
                </td>
              </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
