define(['url'], function() {
  'use strict';
  var $okBtn = $('#J_ok'),
    $routeType = $('#J_route_type'),
    $productType = $('#J_product_type'),
    mainTypeCode = url('?mainTypeCode'),
    minorTypeCode = url('?minorTypeCode');
  $routeType.val(mainTypeCode);
  $productType.val(minorTypeCode);
  $okBtn.click(function() {
    location.href = './?mainTypeCode=' + $routeType.val() + '&minorTypeCode=' + $productType.val();
  });
});