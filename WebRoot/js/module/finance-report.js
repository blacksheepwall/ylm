define(function() {
  'use strict';
  var $table = $('#J_table');
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
