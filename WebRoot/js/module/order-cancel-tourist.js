define(['./util'], function(Util) {
  'use strict';
  var $checkAll = $('#J_check_all'),
    $tbody = $('#J_tbody'),
    $cancel = $('#J_cancel'),
    $memo = $('#J_memo');

  function _cancel() {
    if (confirm('确定要取消这些游客吗？')) {
      Util.post({
        'url': '/order/submitCancel',
        'data': {
          'ids': '1,2,3',
          'cancelMemo': $.trim($memo.val()),
          'orderId': 1000
        },
        'done': function(data) {
          alert(data);
        }
      });
    }
  }

  function _checkAll() {
    var $elems = $tbody.find(':checkbox');
    $checkAll.is(':checked') ? $elems.prop('checked', true) : $elems.prop('checked', false);
  }

  function _init() {
    $cancel.click(_cancel);
    $checkAll.on('change', _checkAll);
  }

  _init();
});

