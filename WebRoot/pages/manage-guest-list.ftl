<#-- 游客列表页 -->
<#assign page_name="manage-guest-list"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="游客列表">
    <@body class="manage-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/manage/">管理中心</a> <span class="divider">/</span></li>
          <li class="active">游客列表</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@manage_sidebar></@manage_sidebar>
        <form class="span10 form-horizontal mod-body">
          <fieldset>
            <div class="control-group">
              <span>年份</span>
              <select class="input-small">
                <option value="所有">所有</option>
                <option selected="" value="2013">2013</option>
                <option value="2014">2014</option>
                <option value="2015">2015</option>
                <option value="2016">2016</option>
                <option value="2017">2017</option>
              </select>
              <span>月份</span>
              <select class="input-small">
                <option value="所有">所有</option>
                <option selected="" value="1月">1月</option>
                <option value="2月">2月</option>
                <option value="3月">3月</option>
                <option value="4月">4月</option>
                <option value="5月">5月</option>
                <option value="6月">6月</option>
                <option value="7月">7月</option>
                <option value="8月">8月</option>
                <option value="9月">9月</option>
                <option value="10月">10月</option>
                <option value="11月">11月</option>
                <option value="12月">12月</option>
              </select>
              <span>游客姓名</span><input type="text">
            </div>

            <div class="control-group">
              <label class="control-label">预订线路类型</label>

              <!-- Multiple Checkboxes -->
              <div class="controls">
                <!-- Inline Checkboxes -->
                <label class="checkbox inline">
                  <input type="checkbox" value="国内">
                  国内
                </label>
                <label class="checkbox inline">
                  <input type="checkbox" value="出境">
                  出境
                </label>
              </div>
            </div>

            <div class="control-group">
              <label class="control-label">预订业务类型</label>

              <!-- Multiple Checkboxes -->
              <div class="controls">
                <!-- Inline Checkboxes -->
                <label class="checkbox inline">
                  <input type="checkbox" value="跟团游">
                  跟团游
                </label>
                <label class="checkbox inline">
                  <input type="checkbox" value="整团">
                  整团
                </label>
                <label class="checkbox inline">
                  <input type="checkbox" value="自由行">
                  自由行
                </label>
                <button id="J_search" class="btn btn-primary btn-small">查找</button>
                <button id="J_export" class="btn btn-small">导出名单</button>
              </div>
            </div>

            <table class="table table-bordered">
              <thead>
              <tr>
                <th>
                  序号
                </th>
                <th>
                  姓名
                </th>
                <th>
                  性别
                </th>
                <th>
                  证件号码
                </th>
                <th>
                  联系电话
                </th>
                <th>
                  订单编号
                </th>
                <th>
                  预订产品名称
                </th>
                <th>
                  状态
                </th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td>
                  1
                </td>
                <td>
                  林展科
                </td>
                <td>
                  男
                </td>
                <td>
                  330103195304060410
                </td>
                <td>

                </td>
                <td>
                  YSL13042410560353
                </td>
                <td>
                  【双城春色】石家庄-北京双飞六日游
                </td>
                <td>
                  有效
                </td>
              </tr>
              </tbody>
            </table>
          </fieldset>
        </form>

      </div>
    </div>
    </@body>
  </@html>
</#escape>
