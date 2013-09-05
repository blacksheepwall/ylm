define(['./util'], function(Util) {
  'use strict';
  var $searchBtn = $('#J_search_btn'),
    $name = $('#J_name'),
    ajaxUrl = '/u/getOrders';
  $searchBtn.on('click', function() {
    Util.validDateTimePicker() && _queryList();
  });
  function _queryList() {
    Util.post({
      'url': ajaxUrl,
      'data': {
        'name': $name.val()
      },
      'done': function(data) {
        console.log(data);
      }
    });
  }

  Util.enableDateTimePicker();
});