define(['form'], function() {
  'use strict';
  var $form = $('form');
  $form.on('submit', function(e) {
    e.preventDefault();
    $form.ajaxSubmit({
      success: _showResponse
    });
  });
  function _showResponse(result) {
    alert($.toJSON(result));
  }

  $('#J_save').click(function(e) {
    e.preventDefault();
    $form.submit();
  });
  $('#J_reset').click(function(e) {
    e.preventDefault();
    $form.resetForm();
  });
});