define(['form'], function() {
  'use strict';
  var $form = $('form');

  function _showResponse(result) {
    alert($.toJSON(result));
  }

  $form.on('submit', function(e) {
    e.preventDefault();
    $form.ajaxSubmit({
      success: _showResponse
    });
  });
  $('#J_save').click(function(e) {
    e.preventDefault();
    $form.submit();
  });
  $('#J_reset').click(function(e) {
    e.preventDefault();
    $form.resetForm();
  });
});