define(['./util', 'dateTimePicker', 'pagination'], function(Util) {
  'use strict';
  var self = {}, $pagination = $('.pagination'),
    $startDate = $('#J_start_date'),
    $endDate = $('#J_end_date'),
    $searchText = $('#J_search_text'),
    $searchBtn = $('#J_search_btn'),
//    $orderContainer = $('#J_order_container'),
//    orderRowTpl = Handlebars.compile($('#J_order_row').html()),
    ajaxUrl = 'xxx';

  function _initDateTimePicker() {
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
  }

  function _initConditions() {
    $searchBtn.click(function() {
      _queryOrderList({
        'data': {
          'beginScheduledTime': $.trim($startDate.val()),
          'endScheduledTime': $.trim($endDate.val()),
          'queryText': $.trim($searchText.val()),
          'orderStatus': 1,
          'contractStatus': 1,
          'leaveStatus': 1,
          'orderType': 1
        }
      });
    })
    $('#J_condition .nav').on('click', 'a', function(e) {
      e.preventDefault();
      $(this).tab('show');
      _queryList({
        'data': {
          'beginScheduledTime': $.trim($startDate.val()),
          'endScheduledTime': $.trim($endDate.val()),
          'queryText': $.trim($searchText.val()),
          'orderStatus': 1,
          'contractStatus': 1,
          'leaveStatus': 1,
          'orderType': 1
        }
      });
    });
  }

  function _initPagination() {
    $pagination.jqPagination({
      paged: function(page) {
        _queryList({'page': page});
      }
    });
  }

  function _queryList(options) {
    var page = options.page || 1, data = $.extend(options.data, {'offset': (page - 1) * 20, 'limit': 20});
    Util.post({
      'url': ajaxUrl,
      'data': data,
      'done': function(data) {
//        $pagination.jqPagination({'max_page': data.count});
//        $orderContainer.html(orderRowTpl(data));
      }
    });
  }

  function _init() {
    _initDateTimePicker();
    _initConditions();
    _initPagination();
//    _queryList({'page': 1});
  }

  _init();
});