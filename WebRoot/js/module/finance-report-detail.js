define(['url'], function() {
  'use strict';
  var $selectMonth = $('#J_select_month'),
    $selectYear = $('#J_select_year'),
    $okBtn = $('#J_ok'),
    type = url('?type');
  $selectYear.val(url('?year') || '2013');
  if (type == 'month') {
    $selectMonth.val(url('?month') || '1');
  }
  $okBtn.click(function() {
    location.href = './?type=' + type + '&year=' + $selectYear.val() + (type == 'month' ? ( '&month=' + $selectMonth.val()) : '');
  });
});
