define(['dateTimePicker', 'pagination'], function() {
  'use strict';
  $('.date-box').datetimepicker({
    language: 'zh-CN',
    format: 'yyyy-mm-dd',
    weekStart: 1,
    todayBtn: 1,
    autoclose: 1,
    todayHighlight: 1,
    minView: 2,
    maxView: 3,
    forceParse: 0
  });
  $('.pagination').jqPagination({
    paged: function(page) {
      $('.log').prepend('<li>Requested page ' + page + '</li>');
    }
  });
});