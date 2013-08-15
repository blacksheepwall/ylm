define(['./util', './flow-step'], function(Util, Flow) {
  'use strict';
  var $toStep2 = $('#J_to_step2'),
    $toStep3 = $('#J_to_step3'),
    $toStep4 = $('#J_to_step4'),
    $editFlight = $('#J_edit_flight'),
    $selectFlight = $('#J_select_flight'),
    $editHotel = $('#J_edit_hotel'),
    $selectHotel = $('#J_select_hotel'),
    $toStep4 = $('#J_to_step4');

  function _toStep2() {
    Flow.to(1);
  }

  function _toStep3() {
    Flow.to(2);
  }

  function _toStep4() {
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
        Flow.to(3);
      }
    });
  }

  function _init() {
    $toStep2.click(_toStep2);
    $toStep3.click(_toStep3);
    $toStep4.click(_toStep4);
    $editFlight.click(function() {
      $selectFlight.modal('show');
    });
    $editHotel.click(function() {
      $selectHotel.modal('show');
    });
  }

  _init();
});