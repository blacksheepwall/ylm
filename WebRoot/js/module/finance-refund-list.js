define(['./util', 'dateTimePicker'], function(Util) {
  'use strict';
  function _init() {
    $('#J_nav').on('click', 'a', function(e) {
      e.preventDefault();
      $(this).tab('show');
    });
  }

  _init();
});