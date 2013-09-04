define(['./util'], function(Util) {
  'use strict';
  var $number = $('#J_number'),
    $content = $('#J_content'),
    $form = $('#J_form'),
    $resetForm = $('#J_reset_form'),
    $okBtn = $('#J_ok_btn');
  $resetForm.click(function() {
    Util.clearForm($form);
    return false;
  });
});