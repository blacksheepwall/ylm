define(['scrollMonitor'], function(scrollMonitor) {
  'use strict';
  var $tab = $('#J_tab'),
    $tabContent = $('#J_tab_content');

  function _initFavorite() {
    $('#J_favorite').click(function() {
      $.ajax({
        'url': '/u/addFavorite/',
        'data': {
          'id': 0,
          'type': 'LINE'
        },
        'type': 'post',
        'dataType': 'json'}).done(function(result) {
          alert($.toJSON(result));
        });
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
    _stickTabs();
  }

  function _stickTabs() {
    var watcher = scrollMonitor.create($tab),
      fixed = 'fixed';
    watcher.lock();
    watcher.partiallyExitViewport(function() {
      $tab.addClass(fixed);
    });
    watcher.fullyEnterViewport(function() {
      $tab.removeClass(fixed);
    });
  }

  function _init() {
    _initFavorite();
    _initTabs();
  }

  _init();
});