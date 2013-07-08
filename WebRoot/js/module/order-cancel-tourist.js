define(['./util'], function(Util) {
  'use strict';
  var $checkAll = $('#J_check_all'),
    $tbody = $('#J_tbody'),
    $cancel = $('#J_cancel'),
    $memo = $('#J_memo'),
    $orderId = $('#J_order_id');

  function _cancel() {
    if (confirm('确定要取消这些游客吗？')) {
      Util.post({
        'url': '/order/submitCancel',
        'data': {
          'ids': _getUserIds(),
          'cancelMemo': $.trim($memo.val()),
          'orderId': $orderId.html()
        },
        'done': function(data) {
          alert(data);
        }
      });
    }
  }

  function _getUserIds() {
    var ids = [];
    $.each($tbody.find(':checked'), function() {
      ids.push($(this).val());
    });
    return ids.join(',');
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

