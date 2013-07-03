define(['./util', 'dateTimePicker'], function(Util) {
  'use strict';
  var $date = $('#J_date');

  function _initDateTimePicker() {
    $date.datetimepicker({
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
  }

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
    _initDateTimePicker();
//    _queryList({});
  }

  _init();
});