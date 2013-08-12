define(['./util', 'moment', 'pagination'], function(Util, moment) {
  'use strict';
  var mod = {}, $pagination = $('.pagination'),
    $startDate = $('#J_start_date'),
    $endDate = $('#J_end_date'),
    $searchText = $('#J_search_text'),
    $searchBtn = $('#J_search_btn'),
    $productContainer = $('#J_product_list'),
    productRowTpl = Handlebars.compile($('#J_product_row').html()),
    ajaxUrl = '/ziyouxing/query';
  Handlebars.registerHelper('dateRenderer', function(date) {
    return moment(date).format('ll');
  });
  function _initQueryConfig() {
    mod.queryConfig = {
      'beginTime': $.trim($startDate.val()),
      'endTime': $.trim($endDate.val()),
      'queryText': $.trim($searchText.val()),
      'leaveCity': '',
      'inlandLine': '',
      'outboundLine': '',
      'type': '',
      'page': 1
    };
  }

  function _initConditions() {
    $searchBtn.click(function() {
      Util.validDateTimePicker() && _queryList({'data': mod.queryConfig});
    })
    $('#J_condition .nav').on('click', 'a', function(e) {
      e.preventDefault();
      var $this = $(this),
        targetData = $this.data('target').split(','),
        key = targetData[0],
        value = targetData[1] || '';
      $this.tab('show');
      mod.queryConfig[key] = value;
      _queryList({'data': mod.queryConfig});
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
    var page = options.page || 1,
      data = $.extend(options.data, {
        'offset': (page - 1) * 20,
        'limit': 20,
        'beginTime': $.trim($startDate.val()),
        'endTime': $.trim($endDate.val()),
        'queryText': $.trim($searchText.val())
      });
    Util.post({
      'singleton': true,
      'url': ajaxUrl,
      'data': data,
      'done': function(data) {
        $pagination.jqPagination({'count': data.count || 0});
        $productContainer.html(productRowTpl(data));
      }
    });
  }

  function _init() {
    Util.enableDateTimePicker();
    _initQueryConfig();
    _initConditions();
    _initPagination();
    _queryList({});
  }

  _init();
});