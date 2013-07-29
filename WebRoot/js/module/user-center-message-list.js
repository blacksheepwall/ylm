define(['pagination'], function() {
  'use strict';
  var mod = {}, $tab = $('#J_tab'),
    $tabContent = $('#J_tab_content'),
    $tables = $tabContent.children(),
    $tableInbox = $tables.eq(0),
    $tableOutbox = $tables.eq(1),
    $allInbox = $('#J_check_all_inbox'),
    $allOutbox = $('#J_check_all_outbox'),
    $pagination = $('.pagination');

  function _initTabs() {
    $('a', $tab).click(function(e) {
      e.preventDefault();
      var $this = $(this),
        index = $tab.children().index($this.parent()),
        $contents = $tabContent.children();
      mod.index = index;
      $this.tab('show');
      $contents.hide();
      $contents.eq(index).show();
    });
  }

  function _checkAll() {
    var $tbody = mod.index ? $tableOutbox : $tableInbox,
      $elems = $tbody.find(':checkbox'),
      $target = mod.index ? $allOutbox : $allInbox;
    $target.is(':checked') ? $elems.prop('checked', true) : $elems.prop('checked', false);
  }

  function _initPagination() {
    $pagination.jqPagination({
      paged: function(page) {
//        _queryOrderList({'page': page});
      }
    });
  }

  function _init() {
    _initTabs();
    $allInbox.add($allOutbox).on('change', _checkAll);
    _initPagination();
  }

  _init();
});