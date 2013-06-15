define(['scrollMonitor'], function(scrollMonitor) {
  'use strict';
  var $e = $('#J_sidebar'),
    watcher = scrollMonitor.create($e, -42 * 2),
    fixed = 'sidebar-fixed';
  watcher.lock();
  watcher.exitViewport(function() {
    $e.addClass(fixed);
  });
  watcher.enterViewport(function() {
    $e.removeClass(fixed);
  });
});