define(['./util', './flow-step'], function(Util, Flow) {
  'use strict';
  var $backToStep1 = $('#J_back_to_step1'),
    $toStep2 = $('#J_to_step2'),
    $backToStep2 = $('#J_back_to_step2'),
    $toStep3 = $('#J_to_step3'),
    $toStep4 = $('#J_to_step4'),
    $toStep5 = $('#J_to_step5'),
    $toStep6 = $('#J_to_step6'),
    $editFlight = $('#J_edit_flight'),
    $selectFlight = $('#J_select_flight'),
    $editHotel = $('#J_edit_hotel'),
    $selectHotel = $('#J_select_hotel');

  function _toStep1() {
    Flow.to(0);
  }

  function _toStep2() {
    Flow.to(1);
  }

  function _toStep3() {
    Flow.to(2);
  }

  function _toStep4() {
    Flow.to(3);
  }

  function _toStep5() {
    Flow.to(4);
  }

  function _toStep6() {
    Util.post({
      'url': '/product/book',
      'data': $.toJSON({
        'productId': productId,
        'customerList': [],
        'airTicketList': [],
        'hotelList': [],
        'extraInfo': []
      }),
      'done': function(data) {
        alert(data);
        Flow.to(5);
      }
    });
  }

  function _init() {
    $toStep2.click(_toStep2);
    $backToStep1.click(_toStep1);
    $toStep3.click(_toStep3);
    $backToStep2.click(_toStep2);
    $toStep4.click(_toStep4);
    $toStep5.click(_toStep5);
    $toStep6.click(_toStep6);
    $editFlight.click(function() {
      $selectFlight.modal('show');
    });
    $editHotel.click(function() {
      $selectHotel.modal('show');
    });
  }

  _init();
});