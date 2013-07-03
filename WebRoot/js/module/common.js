define(['scrollMonitor', 'placeholder'], function(scrollMonitor) {
  'use strict';
  function _lock() {
    var $e = $('#J_header');
    if (!$e.length)
      return;
    var watcher = scrollMonitor.create($e),
      fixed = 'header-fixed';
    watcher.lock();
    watcher.partiallyExitViewport(function() {
      $e.addClass(fixed);
    });
    watcher.fullyEnterViewport(function() {
      $e.removeClass(fixed);
    });
  }

  function _initNav() {
    $('.dropdown').hover(function() {
      $('.dropdown-menu', this).show();
    }, function() {
      $('.dropdown-menu', this).hide();
    });
  }

  function _initPlaceholder() {
    $('input, textarea').placeholder();
  }

  _lock();
  _initNav();
  _initPlaceholder();
});