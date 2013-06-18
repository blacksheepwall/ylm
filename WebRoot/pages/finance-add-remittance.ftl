<#-- 新增汇款页 -->
<#assign page_name="finance-add-remittance"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="新增汇款">
    <@body class="finance-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/main/finance/">财务结算</a> <span class="divider">/</span></li>
          <li class="active">新增汇款</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@finance_sidebar></@finance_sidebar>
        <div class="span10">
          <form class="form-horizontal mod-body" action="">
            <div class="controls-row">
              <div class="span4">
                汇款单号 <input type="text">
              </div>
              <div class="span4">
                汇款日期 <input type="text">
              </div>
              <div class="span4">
                汇款金额 <input type="text">
              </div>
            </div>
            <div class="controls-row">
              <div class="span4">
                汇出账号 <input type="text">
              </div>
              <div class="span4">
                开户行 <input type="text">
              </div>
              <div class="span4">
                账户名称 <input type="text">
              </div>
            </div>
            <div class="control-group">
              <label class="control-label name">汇入账号</label>
              <div class="controls value">
                <label class="radio">
                  <input type="radio" name="optionsRadios" checked="">浙江中山国际旅行社有限公司
                </label>
                <label class="radio">
                  <input type="radio" name="optionsRadios">浙江中山国际旅行社有限公司
                </label>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label name">汇款说明</label>
              <div class="controls value">
                <textarea id="" rows="5"></textarea>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label name">附件</label>
              <div class="controls value">
                <a href="">上传附件</a>
              </div>
            </div>
            <div class="control-group">
              <label class="control-label name">付款内容</label>
              <div class="controls value">
                <table class="table table-hover table-bordered">
                  <thead>
                  <tr>
                    <th>
                      选择
                    </th>
                    <th>
                      订单编号
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
                      状态
                    </th>
                    <th>
                      订单金额
                    </th>
                    <th>
                      未付余款
                    </th>
                    <th>
                      本次付款
                    </th>
                  </tr>
                  </thead>
                  <tbody>
                  <tr>
                    <td>
                      <input type="checkbox" checked="">
                    </td>
                    <td>
                      <a href="">YSL13050310010390</a>
                    </td>
                    <td>
                      <a href="">【双城春色】石家庄-北京双飞六日游</a>
                    </td>
                    <td>
                      2013-05-07
                    </td>
                    <td>
                      3大1小
                    </td>
                    <td>
                      已确认
                    </td>
                    <td>
                      8000.00
                    </td>
                    <td>
                      8000.00
                    </td>
                    <td>
                      <input type="text" value="8000.00">
                    </td>
                  </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <div class="control-group">
              <div class="controls">
                <button id="login" class="btn btn-primary">提交</button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
