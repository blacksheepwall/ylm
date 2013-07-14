define(function() {
  'use strict';
  var $tab = $('#J_tab'),
    $tabContent = $('#J_tab_content');

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

  function _init() {
    _initTabs();
  }

  _init();
});