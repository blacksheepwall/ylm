define(['./util'], function(Util) {
  'use strict';
  var $resetForm = $('#J_reset_form'),
    $form = $('#J_form'),
    ajaxUrl = '/u/readEmployee';
  $resetForm.click(function() {
    Util.clearForm($form);
    return false;
  });
  $form.on('submit', function() {
    return false;
  });
  Util.post({
    'url': ajaxUrl,
    'done': function(data) {
      console.log(data);
    }
  });
});