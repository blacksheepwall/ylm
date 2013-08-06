var productType = productType;
define(['./util', 'dateTimePicker', 'pagination'], function(Util) {
  'use strict';
  var mod = {}, $pagination = $('.pagination'),
    $startDate = $('#J_start_date'),
    $endDate = $('#J_end_date'),
    $searchText = $('#J_search_text'),
    $searchBtn = $('#J_search_btn'),
    $tab = $('#J_tab'),
    $tabContent = $('#J_tab_content'),
    $productContainer = $('#J_product_list'),
    productRowTpl = Handlebars.compile($('#J_product_row').html()),
    ajaxUrl = '/' + productType + '/query';

  function _initQueryConfig() {
    mod.queryConfig = {
      'beginScheduledTime': $.trim($startDate.val()),
      'endScheduledTime': $.trim($endDate.val()),
      'queryText': $.trim($searchText.val()),
      'leaveCity': '',
      'dateRange': '',
      'priceRange': '',
      'traffic': '',
      'priceOrder': '',
      'startDateOrder': '',
      'page': 1
    };
  }

  function _initConditions() {
    $searchBtn.click(function() {
      _queryList({'data': mod.queryConfig});
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

  function _initTabs() {
    $('a', $tab).click(function(e) {
      e.preventDefault();
      var $this = $(this),
        index = $tab.children().index($this.parent()),
        $contents = $tabContent.children();
      $this.tab('show');
      $contents.hide();
      $contents.eq(index).show();
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
      data = $.extend(options.data, {'offset': (page - 1) * 20, 'limit': 20});
    Util.post({
      'url': ajaxUrl,
      'data': data,
      'done': function(data) {
        $pagination.jqPagination({'count': data.count});
        $pagination.jqPagination({'max_page': data.count});
        $productContainer.html(productRowTpl(data));
      }
    });
  }

  function _init() {
    Util.enableDateTimePicker();
    _initQueryConfig();
    _initConditions();
    _initTabs();
    _initPagination();
    _queryList({});
  }

  _init();
});