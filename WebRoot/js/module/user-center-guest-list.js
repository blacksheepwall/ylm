define(['./util'], function(Util) {
  'use strict';
  var $searchBtn = $('#J_search_btn'),
    $name = $('#J_name'),
    ajaxUrl = '/u/searchGuest';
  $searchBtn.click(function() {
    var name = $.trim($name.val());
    Util.post({
      'url': ajaxUrl,
      'data': {
        'name': name
      },
      'done': function(data) {
        console.log(data);
      }
    });
  });
});