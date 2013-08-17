define(['./util'], function(Util) {
  'use strict';
  var $formBody = $('#J_form_body'),
    $startDate = $('#J_start_date_preview'),
    $adultNum = $('#J_adult_num'),
    $childNum = $('#J_child_num'),
    $contact = $('#J_contact'),
    $phone = $('#J_phone'),
    $desc = $('#J_desc'),
    $addCustomer = $('#J_add_customer'),
    $customerList = $('#J_customer_list'),
    $confirmOrder = $('#J_confirm_order'),
    $editOrder = $('#J_edit_order'),
    $saveOrder = $('#J_save_order'),
    $formBodyPreview = $('#J_form_body_preview'),
    $startDatePreview = $('#J_start_date_preview'),
    $contactPreview = $('#J_contact_preview'),
    $phonePreview = $('#J_phone_preview'),
    $customerCountPreview = $('#J_customer_count_preview'),
    $totalCostPreview = $('#J_total_cost_preview'),
    $descPreview = $('#J_desc_preview'),
    $customerListPreview = $('#J_customer_list_preview');
  var adultTpl = $('#J_adult_row').html(),
    childTpl = $('#J_child_row').html(),
    customerRowTpl = Handlebars.compile($('#J_customer_row_preview').html()),
    saveUrl = '';

  function _initNum() {
    $adultNum.add($childNum)
      .on('input propertychange', _numberChanged)
      .on('keyup',function() {  // keyup 事件处理
        $(this).val($(this).val().replace(/\D/g, ''));
      }).on('paste',function() {  // CTR+V 事件处理
        $(this).val($(this).val().replace(/\D/g, ''));
      }).css('ime-mode', 'disabled');  // CSS 设置输入法不可用
  }

  function _numberChanged() {
  }

  function _generateCustomerList() {
    if (($adultNum.val() + $childNum.val()) > 0) {
      $customerList.empty();
      for (var i = 0; i < $adultNum.val(); i++) {
        $customerList.append(adultTpl);
      }
      for (var i = 0; i < $childNum.val(); i++) {
        $customerList.append(childTpl);
      }
    }
    else {
      alert('请先填写游客人数');
    }
  }

  function _saveOrder() {
    var data = _getOrderData();
    Util.post({
      'url': '/product/book',
      'data': $.toJSON({
        'id': id,
        'startDate': $startDate.val(),
        'name': $contact.val(),
        'phone': $phone.val(),
        'description': $desc.val(),
        'customerList': data.list
      }),
      'done': function(data) {
        alert(data);
      }
    });
  }

  function _confirmOrder() {
    if (_validOrder()) {
      $formBody.add($confirmOrder).hide();
      $editOrder.add($saveOrder).add($formBodyPreview).show();
      _setPreviewForm();
    }
  }

  function _setPreviewForm() {
    $startDatePreview.text($startDate.val());
    $contactPreview.text($contact.val());
    $phonePreview.text($phonePreview.val());
    $customerCountPreview.text($childNum.val() + $adultNum.val());
    $totalCostPreview.text(_getTotalCost);
    $descPreview.text($desc.val());
    $customerListPreview.html(customerRowTpl(_getOrderData()));
  }

  function _getTotalCost() {
    return 10000;
  }

  function _getOrderData() {
    var data = [];
    $customerList.children().each(function(i, c) {
      var $c = $(c);
      data.push({
        'isAdult': $c.find('.j-isadult').data('isadult'),
        'name': $c.find('.j-name').val(),
        'gender': $c.find('.j-gender').val(),
        'idCardType': $c.find('.j-idcard-type').val(),
        'idCardValue': $c.find('.j-idcard-value').val(),
        'phone': $c.find('.j-phone').val(),
        'price': $c.find('.j-price').val(),
        'dfcCount': $c.find('.j-dfc').val(),
        'bxCount': $c.find('.j-bx').val()
      });
    });
    return {'list': data};
  }

  function _validOrder() {
    if (_.isEmpty($.trim($contact.val()))) {
      alert('请填写联系人');
      return false;
    }
    if (_.isEmpty($.trim($phone.val()))) {
      alert('请填写联系手机号');
      return false;
    }
    if (!$customerList.children().length) {
      alert('请填写游客信息');
      return false;
    }
    return true;
  }

  function _editOrder() {
    $formBody.add($confirmOrder).show();
    $editOrder.add($saveOrder).add($formBodyPreview).hide();
  }

  function _init() {
    Util.enableDateTimePicker();
    _initNum();
    $addCustomer.click(_generateCustomerList);
    $confirmOrder.click(_confirmOrder);
    $editOrder.click(_editOrder);
    $saveOrder.click(_saveOrder);
  }

  _init();
});