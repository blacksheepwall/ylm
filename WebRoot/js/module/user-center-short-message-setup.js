define(['./util'], function(Util) {
  'use strict';
  var $number = $('#J_number'),
    $key = $('#J_key'),
    $form = $('#J_form'),
    $resetForm = $('#J_reset_form'),
    $okBtn = $('#J_ok_btn');
  $resetForm.click(function() {
    Util.clearForm($form);
    return false;
  });
  $form.on('submit', function() {
    return false;
  });
});