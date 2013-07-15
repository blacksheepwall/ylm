define(['./util'], function(Util) {
  'use strict';
  var $resetForm = $('#J_reset_form'),
    $form = $('#J_form');
  $resetForm.click(function() {
    Util.clearForm($form);
    return false;
  });
});