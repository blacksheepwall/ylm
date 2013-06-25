define(['./util', 'dateTimePicker', 'pagination'], function(Util) {
  'use strict';
  var self = {}, $pagination = $('.pagination'),
    $orderContainer = $('#J_order_container'),
    orderRowTpl = Handlebars.compile($('#J_order_row').html()),
    ajaxUrl = 'queryOrders';
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
  function _initPagination() {
    $pagination.jqPagination({
      paged: function(page) {
        _getOrderList({'page': page});
      }
    });
  }

  function _getOrderList(options) {
    var page = options.page;
    Util.post({
      'url': ajaxUrl,
      'data': {
        'offset': (page - 1) * 20,
        'limit': 20
      },
      'done': function(data) {
        $pagination.jqPagination({'max_page': data.count});
        $orderContainer.html(orderRowTpl(data));
      }
    });
  }

  function _init() {
    _initPagination();
    _getOrderList({'page': 1});
  }

  _init();
});