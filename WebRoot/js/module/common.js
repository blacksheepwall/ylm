define(['scrollMonitor'], function(scrollMonitor) {
  'use strict';
  function _lock() {
    var $e = $('#J_header');
    if (!$e.length)
      return;
    var watcher = scrollMonitor.create($e, -52),
      fixed = 'header-fixed';
    watcher.lock();
    watcher.exitViewport(function() {
      $e.addClass(fixed);
    });
    watcher.enterViewport(function() {
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

  _lock();
  _initNav();
});