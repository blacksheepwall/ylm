<#-- 信息修改页 -->
<#assign page_name="manage-edit-company"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="信息修改">
    <@body class="manage-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/manage/">管理中心</a> <span class="divider">/</span></li>
          <li class="active">信息修改</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@manage_sidebar></@manage_sidebar>
        <form class="span10 form-horizontal mod-body">
          <fieldset>
            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">单位名称</label>

              <div class="controls">
                <input type="text" placeholder="单位名称" class="input-xlarge" disabled>

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">法人代表</label>

              <div class="controls">
                <input type="text" placeholder="法人代表" class="input-xlarge" disabled>

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">经营许可证</label>

              <div class="controls">
                <input type="text" placeholder="经营许可证" class="input-xlarge" disabled>

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">经营范围</label>

              <div class="controls">
                <input type="text" placeholder="经营范围" class="input-xlarge" disabled>

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">单位简称</label>

              <div class="controls">
                <input type="text" placeholder="" class="input-xlarge">

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">所在区域</label>

              <div class="controls">
                <input type="text" placeholder="" class="input-xlarge">

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">联系人</label>

              <div class="controls">
                <input type="text" placeholder="" class="input-xlarge">

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">联系电话</label>

              <div class="controls">
                <input type="text" placeholder="" class="input-xlarge">

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">公司电话</label>

              <div class="controls">
                <input type="text" placeholder="" class="input-xlarge">

                <p class="help-block"></p>
              </div>
            </div>


            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">公司传真</label>

              <div class="controls">
                <input type="text" placeholder="" class="input-xlarge">

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">电子邮箱</label>

              <div class="controls">
                <input type="text" placeholder="" class="input-xlarge">

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">地址</label>

              <div class="controls">
                <input type="text" placeholder="" class="input-xlarge">

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">

              <!-- Text input-->
              <label class="control-label">邮政编码</label>

              <div class="controls">
                <input type="text" placeholder="" class="input-xlarge">

                <p class="help-block"></p>
              </div>
            </div>

            <div class="control-group">
              <div class="controls">
                <button id="login" class="btn btn-primary">提交</button>
                <button class="btn" data-dismiss="modal" aria-hidden="true">取消</button>
              </div>
            </div>

          </fieldset>
        </form>

      </div>
    </div>
    </@body>
  </@html>
</#escape>
