define(['./util', 'pagination'], function(Util) {
  'use strict';
  var mod = {},
    ajaxUrl = '/finance/payment/query',
    $pagination = $('.pagination'),
    $startDate = $('#J_start_date'),
    $endDate = $('#J_end_date'),
    $status = $('#J_status'),
    $ticketNo = $('#J_ticket_no'),
    $searchBtn = $('#J_search_btn'),
    $remittanceList = $('#J_remittance_list'),
    remittanceItemTpl = Handlebars.compile($('#J_remittance_item_tpl').html());
  Handlebars.registerHelper('statusRenderer', function(status) {
    var result = '';
    switch (status) {
      case '1':
        result = '打开';
        break;
      case '2':
        result = '认领中';
        break;
      case '5':
        result = '已认领';
        break;
      case '6':
        result = '作废';
        break;
    }
    return result;
  });
  function _initQueryConfig() {
    mod.queryConfig = {
      'beginDate': '',
      'endDate': '',
      'ticketNo': '',
      'status': '',
      'page': 1
    };
  }

  function _initPagination() {
    $pagination.jqPagination({
      paged: function(page) {
        _queryList({'page': page});
      }
    });
  }

  function _initConditions() {
    $searchBtn.click(function() {
      Util.validDateTimePicker() && _queryList({'data': mod.queryConfig});
    });
    $remittanceList.on('click', '.j-remove', function() {
      if (confirm('是否确定要删除这条数据？')) {
      }
    });
  }

  function _queryList(options) {
    var page = options.page || 1,
      data = $.extend(options.data, {
        'offset': (page - 1) * 20,
        'limit': 20,
        'beginDate': $startDate.val(),
        'endDate': $endDate.val(),
        'ticketNo': $.trim($ticketNo.val()),
        'status': $status.val()
      });
    Util.post({
      'singleton': true,
      'url': ajaxUrl,
      'data': data,
      'beforeSend': function() {
        $remittanceList.empty();
        $pagination.jqPagination({'count': 0});
      },
      'done': function(data) {
        $pagination.jqPagination({'count': data.count || 0});
        $remittanceList.html(remittanceItemTpl(data.resultList));
      }
    });
  }

  function _init() {
    Util.enableDateTimePicker();
    _initQueryConfig();
    _initPagination();
    _initConditions();
    _queryList({});
  }

  _init();
});