define(['./util', 'url'], function(Util) {
  'use strict';
  var $resetForm = $('#J_reset_form'),
    $oldPassword = $('#J_old_password'),
    $newPassword = $('#J_new_password'),
    $newPasswordCheck = $('#J_new_password_check'),
    $form = $('#J_form');
  $resetForm.click(function() {
    Util.clearForm($form);
    return false;
  });
  $form.on('submit', function() {
    if ($newPassword.val() !== $newPasswordCheck.val()) {
      alert('两次密码输入不一致');
      return false;
    }
    Util.post({
      'url': '/u/updatePass',
      'data': {
        'newPass': $newPassword.val(),
        'oldPass': $oldPassword.val()
      },
      'success': function(data) {
        alert(data);
      }
    });
    return false;
  });
});