define(['./util', 'dateTimePicker', 'pagination'], function(Util) {
  'use strict';
  var mod = {}, $pagination = $('.pagination'),
    $startDate = $('#J_start_date'),
    $endDate = $('#J_end_date'),
    $searchText = $('#J_search_text'),
    $searchBtn = $('#J_search_btn'),
    $orderContainer = $('#J_order_container'),
    orderRowTpl = Handlebars.compile($('#J_order_row').html()),
    ajaxUrl = 'queryOrders';

  function _initQueryConfig() {
    mod.queryConfig = {
      'beginTime': $.trim($startDate.val()),
      'endTime': $.trim($endDate.val()),
      'queryText': $.trim($searchText.val()),
      'orderStatus': 1,
      'contractStatus': 1,
      'leaveStatus': 1,
      'orderType': 1
    };
  }

  function _initConditions() {
    $searchBtn.click(function() {
      Util.validDateTimePicker() && _queryOrderList({'data': mod.queryConfig});
    });
    $('#J_condition .nav').on('click', 'a', function(e) {
      e.preventDefault();
      var $this = $(this),
        targetData = $this.data('target').split(','),
        key = targetData[0],
        value = targetData[1] || '';
      $this.tab('show');
      mod.queryConfig[key] = value;
      _queryOrderList({'data': mod.queryConfig});
    });
  }

  function _initPagination() {
    $pagination.jqPagination({
      paged: function(page) {
        _queryOrderList({'page': page});
      }
    });
  }

  function _queryOrderList(options) {
    var page = options.page || 1, data = $.extend(options.data, {'offset': (page - 1) * 20, 'limit': 20});
    Util.post({
      'url': ajaxUrl,
      'data': data,
      'done': function(data) {
        $pagination.jqPagination({'count': data.count || 0});
        $orderContainer.html(orderRowTpl(data));
      }
    });
  }

  function _init() {
    Util.enableDateTimePicker();
    _initQueryConfig();
    _initConditions();
    _initPagination();
    _queryOrderList({});
  }

  _init();
});