define(['scrollMonitor'], function(scrollMonitor) {
  'use strict';
  function _lock() {
    var $header = $('#J_header'),
      watcher = scrollMonitor.create($header, -52),
      fixed = 'header-fixed';
    watcher.lock();
    watcher.exitViewport(function() {
      $header.addClass(fixed);
    });
    watcher.enterViewport(function() {
      $header.removeClass(fixed);
    });
  }

  _lock();
});