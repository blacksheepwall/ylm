define(['./util', 'dateTimePicker'], function(Util) {
  'use strict';
  var $startDate = $('#J_start_date'),
    $endDate = $('#J_end_date');

  function _queryList(options) {
    Util.post({
      'url': 'xxx',
      'data': options.data,
      'done': function(data) {
        alert(data);
      }
    });
  }

  function _init() {
    Util.enableDateTimePicker();
//    _queryList({});
  }

  _init();
});