define(['url'], function() {
  'use strict';
  var $table = $('#J_table'),
    $selectMonth = $('#J_select_month'),
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
  $table.on('click', '.j-toggle', function() {
    var $t = $(this), $ols = $t.closest('tr').find('ol'), key = 'expand', value = $t.data(key);
    if (_.isUndefined(value) || value == 'true') {
      $ols.show();
      $t.data(key, 'false');
    } else {
      $ols.hide();
      $t.data(key, 'true');
    }
  });
});
