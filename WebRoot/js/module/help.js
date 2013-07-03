define(['scrollMonitor'], function(scrollMonitor) {
  'use strict';
  var $e = $('#J_sidebar'),
    watcher = scrollMonitor.create($e),
    fixed = 'sidebar-fixed';
  watcher.lock();
  watcher.partiallyExitViewport(function() {
    $e.addClass(fixed);
  });
  watcher.fullyEnterViewport(function() {
    $e.removeClass(fixed);
  });
});