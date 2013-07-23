define(['./flow-step'], function(Flow) {
  'use strict';
  var $toStep2 = $('#J_to_step2'),
    $toStep3 = $('#J_to_step3'),
    $toStep4 = $('#J_to_step4');

  function _toStep2() {
    Flow.to(1);
  }

  function _toStep3() {
    Flow.to(2);
  }

  function _toStep4() {
    Flow.to(3);
  }

  function _init() {
    $toStep2.click(_toStep2);
    $toStep3.click(_toStep3);
    $toStep4.click(_toStep4);
  }

  _init();
});