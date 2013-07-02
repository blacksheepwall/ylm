define(function() {
  'use strict';
  var $body = $('body'), $tab = $('#J_tab'),
    $orderInfo = $('#J_order_info'),
    $userList = $('#J_user_list');

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
    $orderInfo.on('click', 'a',function(e) {
      e.stopPropagation();
      $body.click();
      $(this).next().show();
    }).on('click', '.icon-remove', function() {
        $body.click();
      });
    $body.on('click', '.popover',function(e) {
      e.stopPropagation();
    }).click(function() {
        $('.popover').hide();
      });
    $userList.on('click', '.j-price', function(e) {
      e.stopPropagation();
      $body.click();
      $(this).next().show();
    }).on('click', '.j-close', function(e) {
      $body.click();
    });
  }

  _init();
});