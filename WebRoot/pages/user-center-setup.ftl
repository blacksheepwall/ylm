<#-- 个人设置页 -->
<#assign page_name="user-center-setup"/>
<#include "common/module.ftl"/>
<#escape x as x?html>
  <@html title="个人设置">
    <@body class="user-center">
    <div class="main-body">
      <div class="row-fluid">
        <ul class="breadcrumb pull-left">
          <li><a href="/main/">首页</a> <span class="divider">/</span></li>
          <li><a href="/u/">用户中心</a> <span class="divider">/</span></li>
          <li class="active">个人设置</li>
        </ul>
      </div>
      <div class="row-fluid">
        <@user_center_sidebar></@user_center_sidebar>
        <div class="span10 form-horizontal manage-body mod-body">
          <div class="control-group">
            <label class="control-label">系统账户</label>
            <div class="controls">
              <input type="text" value="yubh" readonly="">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">系统角色</label>
            <div class="controls">
              <input type="text" value="业务操作" readonly="">
            </div>
          </div>
          <form action="/u/updateSetup" method="POST">
          <div class="control-group">
            <label class="control-label">姓名</label>
            <div class="controls">
              <input name="userName" type="text" value="${account.name}">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">性别</label>
            <div class="controls">
              <label class="radio inline">
                <input type="radio" name="sex" value="0" <#if account.sex!false>checked</#if>>男
              </label>
              <label class="radio inline">
                <input type="radio" name="sex" value="1" <#if !account.sex!false>checked</#if>>女
              </label>
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">所在部门</label>
            <div class="controls">
              <input type="text" name="depart" value="${(account.depart)!}">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">联系电话</label>
            <div class="controls">
              <input type="text" name="telphone" value="${(account.telphone)!}">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">手机号码</label>
            <div class="controls">
              <input type="text" name="mobile" value="${(account.mobile)!}">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">电子邮箱</label>
            <div class="controls">
              <input type="text" name="email" value="${(account.email)!}">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">QQ号码</label>
            <div class="controls">
              <input type="text" name="qq" value="${(account.qq)!}">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">传真</label>
            <div class="controls">
              <input type="text" name="fax">
            </div>
          </div>
          <div class="control-group">
            <label class="control-label">头像</label>
            <div class="controls">
              <img data-src="holder.js/140x140" class="img-rounded" alt="140x140" style="width: 140px; height: 140px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIwAAACMCAYAAACuwEE+AAAEIElEQVR4Xu3XwStlYQDG4e8WIsmGyEayxFr5961sZEXKgkRWVxIrzPSdOpM57nDfmXtvufPYzXi7x/zOM985ev1+/0fxpcCQBXrADFnKrCkADAhRAWCiXMbAMBAVACbKZQwMA1EBYKJcxsAwEBUAJsplDAwDUQFgolzGwDAQFQAmymUMDANRAWCiXMbAMBAVACbKZQwMA1EBYKJcxsAwEBUAJsplDAwDUQFgolzGwDAQFQAmymUMDANRAWCiXMbAMBAVACbKZQwMA1EBYKJcxsAwEBUAJsplDAwDUQFgolzGwDAQFQAmymUMDANRAWCiXMbAMBAVACbKZQwMA1EBYKJcxsAwEBUAJsplDAwDUQFgolzGwDAQFQAmymUMDANRAWCiXMbAMBAVACbKZQwMA1EBYKJcxsAwEBUAJsplDAwDUQFgolzGwDAQFQAmymUMDANRAWCiXMbAMBAVmAow19fX5erqquzv75fZ2dkPAbrfr38+Pz//tVtbWyt7e3tDh5v09Yb+wSYw/PZgjo+PS7/fL/Pz8wPB1O+dnJyUubm55vu9Xq8cHh6WlZWVBsnZ2Vm5ubkpu7u7ZX19/cvkk77elz/QhAffGky92RXCw8NDeX5+/gDm5eWlwfH6+voL1N3dXXO6tEBaUJubm2V7e/vT/JO+3oQtDHW5bw2m/RfW//WDwNS/f3p6ak6V+lVPmIuLi3J7e1sODg7KwsJCaVHVE2dmZqY5bba2tho87aOr+8ga1fWSx+BQd3MCo6kF0z5qdnZ2yuXlZXPKfAXm/SNqeXm5ObkGvd8MAvO315vAPR7pJaYSTPuYWV1dLRXM0dHR0GBq3fY9ZWlpqUHW/eqC+dfrjfSOjvnDphJMe8O77SqAjY2NT99hBr33dH/z6oL5l+uN+f6O/OOnEsz7Sm9vb7+dMI+Pj81vTfX0aR9B799p6s2/v79vTqbT09OyuLj44ZT50ztMvW56vZHf0TF/4H8Hpp4W7ftG27Z9yW1Piu5Lb/fRlID57Hpjvrdj+fipADOWMj50YAFgwIgKABPlMgaGgagAMFEuY2AYiAoAE+UyBoaBqAAwUS5jYBiICgAT5TIGhoGoADBRLmNgGIgKABPlMgaGgagAMFEuY2AYiAoAE+UyBoaBqAAwUS5jYBiICgAT5TIGhoGoADBRLmNgGIgKABPlMgaGgagAMFEuY2AYiAoAE+UyBoaBqAAwUS5jYBiICgAT5TIGhoGoADBRLmNgGIgKABPlMgaGgagAMFEuY2AYiAoAE+UyBoaBqAAwUS5jYBiICgAT5TIGhoGoADBRLmNgGIgKABPlMgaGgagAMFEuY2AYiAoAE+UyBoaBqAAwUS5jYBiICgAT5TIGhoGoADBRLmNgGIgKABPlMgaGgagAMFEuY2AYiAr8BEtvBLVi8MZpAAAAAElFTkSuQmCC">
              <a href="javascript:;">上传头像</a>
            </div>
          </div>
          <div class="control-group">
            <div class="controls">
              <button id="J_save" class="btn btn-primary" type="submit">保存</button>
              <button id="J_reset" class="btn">重置</button>
            </div>
          </div>
          </form>
        </div>
      </div>
    </div>
    </@body>
  </@html>
</#escape>
