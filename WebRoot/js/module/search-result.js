define(['./util', 'moment', 'pagination', 'url'], function(Util, moment) {
  'use strict';
  var mod = {'index': 0},
    $condition = $('#J_condition'),
    $conditionDate = $('#J_condition_date'),
    $conditionPrice = $('#J_condition_price'),
    $conditionLeaveCity = $('#J_condition_leave_city'),
    $routeType = $('#J_route_type'),
    $pagination = $('.pagination'),
    $startDate = $('#J_start_date'),
    $endDate = $('#J_end_date'),
    $searchText = $('#J_search_text'),
    $searchBtn = $('#J_search_btn'),
    $tab = $('#J_tab'),
    $tabContent = $('#J_tab_content'),
    $sortContainer = $('#J_sort'),
    $productContainer = $('#J_product_list'),
    productRowTpl = Handlebars.compile($('#J_product_row').html()),
    queryUrl = '/product/query',
    searchValue = decodeURI(url('?value') || ''),
    leaveCity = url('?leaveCity') || '';
  var gnyDateTpl = $('#J_condition_date_guoneiyou').html(),
    cjyDateTpl = $('#J_condition_date_chujingyou').html(),
    gnyPriceTpl = $('#J_condition_price_guoneiyou').html(),
    cjyPriceTpl = $('#J_condition_price_chujingyou').html();

  function _initQueryConfig() {
    mod.queryConfig = {
      'productType': '',
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
    });
    $condition.on('click', '.nav a', _switchTabs);
    if (leaveCity) {
      $conditionLeaveCity.find('.active').removeClass('active').end()
        .find('a[data-target="leaveCity,' + leaveCity + '"]').click();
    }
    $routeType.change(function() {
      var val = $routeType.val();
      mod.queryConfig.productType = val;
      if (val == 'CJ') {
        $conditionDate.find('ul').remove().end().append(cjyDateTpl);
        $conditionPrice.find('ul').remove().end().append(cjyPriceTpl);
      } else if (val == 'GN') {
        $conditionDate.find('ul').remove().end().append(gnyDateTpl);
        $conditionPrice.find('ul').remove().end().append(gnyPriceTpl);
      } else if (val == 'GT') {
      }
    });
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
        $productContainer.empty();
        $pagination.jqPagination({'count': 0});
      },
      'done': function(data) {
        $pagination.jqPagination({'count': data.count || 0});
        $productContainer.html(productRowTpl(data.resultList));
      }
    });
  }

  function _init() {
    Handlebars.registerHelper('dateRenderer', function(date) {
      return moment(date).format('ll');
    });
    $searchText.val(searchValue);
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