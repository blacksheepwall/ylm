define(function() {
  'use strict';
  var $body = $('body'), $tab = $('#J_tab'),
    $orderInfo = $('#J_order_info');

  function _init() {
    $('a', $tab).click(function(e) {
      e.preventDefault();
      var $this = $(this),
        index = $tab.children().index($this.parent()),
        $contents = $tab.next().children();
      $this.tab('show');
      $contents.hide();
      $contents.eq(index).show();
    });
    $orderInfo.on('click', 'a', function(e) {
      e.stopPropagation();
      $(this).next().show();
    });
    $body.on('click', '.popover',function(e) {
      e.stopPropagation();
    }).click(function() {
        $('.popover').hide();
      });
  }

  _init();
});