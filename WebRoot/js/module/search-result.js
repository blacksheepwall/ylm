define(['./util', 'moment', 'pagination'], function(Util, moment) {
  'use strict';
  var mod = {'index': 0}, $pagination = $('.pagination'),
    $startDate = $('#J_start_date'),
    $endDate = $('#J_end_date'),
    $searchText = $('#J_search_text'),
    $searchBtn = $('#J_search_btn'),
    $tab = $('#J_tab'),
    $tabContent = $('#J_tab_content'),
    $sortContainer = $('#J_sort'),
    $productContainer = $('#J_product_list'),
    productRowTpl = Handlebars.compile($('#J_product_row').html()),
    queryUrl = '/product/search';
  Handlebars.registerHelper('dateRenderer', function(date) {
    return moment(date).format('ll');
  });
  function _initQueryConfig() {
    mod.queryConfig = {
      'leaveCity': '',
      'dateRange': '',
      'priceRange': '',
      'traffic': '',
      'priceOrder': '',
      'startDateOrder': '',
      'typeCode': '',
      'page': 1
    };
  }

  function _initConditions() {
    $searchBtn.click(function() {
      Util.validDateTimePicker() && _queryList({'data': mod.queryConfig});
    })
    $('#J_condition').on('click', '.nav a', _switchTabs);
    $('#J_route_list').on('click', 'a', _switchTabs);
  }

  function _switchTabs(e) {
    e.preventDefault();
    var $this = $(this),
      targetData = $this.data('target').split(','),
      key = targetData[0],
      value = targetData[1] || '';
    $this.tab('show');
    mod.queryConfig[key] = value;
    _queryList({'data': mod.queryConfig});
  }

  function _initTabs() {
    $('a', $tab).click(function(e) {
      e.preventDefault();
      var $this = $(this),
        $contents = $tabContent.children();
      mod.tabIndex = $tab.children().index($this.parent());
      $this.tab('show');
      $contents.hide();
      $contents.eq(mod.tabIndex).show();
      $sortContainer.find('i').removeAttr('class');
      _queryList({});
    });
  }

  // 是否支持多重排序
  function _initSort() {
    $sortContainer.on('click', 'a', function() {
      var $this = $(this),
        by = $this.data('by'),
        desc = $this.data('desc'),
        prefix = 'icon-arrow-';
      $sortContainer.find('i').removeAttr('class');
      mod.queryConfig[by] = desc ? (desc == 'desc' ? 'asc' : 'desc') : 'desc';
      $this.data('desc', mod.queryConfig[by]).find('i').addClass(prefix + (mod.queryConfig[by] == 'desc' ? 'down' : 'up'));
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
      'url': queryUrl,
      'data': data,
      'beforeSend': function() {
//        $productContainer.empty();
        $pagination.jqPagination({'count': 0});
      },
      'done': function(data) {
        $pagination.jqPagination({'count': data.count || 0});
        if (data && data.result) {
          $productContainer.html(productRowTpl(data.resultList));
        }
      }
    });
  }

  function _init() {
    Util.enableDateTimePicker();
    _initQueryConfig();
    _initConditions();
    _initTabs();
    _initSort();
    _initPagination();
    _queryList({});
  }

  _init();
});