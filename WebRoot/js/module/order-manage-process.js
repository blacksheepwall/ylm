define(function() {
  'use strict';
  var $tab = $('#J_tab');
  $('a', $tab).click(function(e) {
    e.preventDefault();
    var $this = $(this),
      index = $tab.children().index($this.parent()),
      $contents = $tab.next().children();
    $this.tab('show');
    $contents.hide();
    $contents.eq(index).show();
  });
});