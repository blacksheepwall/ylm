define(['./util'], function(Util) {
  'use strict';
  var $searchBtn = $('#J_search_btn'),
    $startDate = $('#J_start_date'),
    $endDate = $('#J_end_date'),
    ajaxUrl = '/u/getPerformance';
  $searchBtn.on('click', function() {
    Util.validDateTimePicker() && _queryList();
  });
  function _queryList() {
    Util.post({
      'url': ajaxUrl,
      'data': {
        'beginTime': $.trim($startDate.val()),
        'endTime': $.trim($endDate.val())
      },
      'done': function(data) {
        console.log(data);
      }
    });
  }

  Util.enableDateTimePicker();
});