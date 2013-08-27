define(function() {
  'use strict';
  var $okBtn = $('#J_ok'),
    $routeType = $('#J_route_type'),
    $productType = $('#J_product_type');
  $okBtn.click(function() {
    location.href = './?mainTypeCode=' + $routeType.val() + '&minorTypeCode=' + $productType.val();
  });
});