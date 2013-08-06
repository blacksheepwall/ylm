define(function() {
  'use strict';
  var noop = $.noop();

  function _ajax(options) {
    var type = options.type || 'get',
      _options = {
        'type': type,
        'url': options.url,
        'data': options.data,
        'dataType': 'json'
      };
    $.ajax(_options).done(function(result) {
      if (result && result.status == 0) {
        var done = options.done || noop;
        done(result.data);
      } else {
        alert(result.desc || '');
      }
    }).fail(function(result) {
        alert(result || '');
      });
  }

  function _clearForm(form) {
    // iterate over all of the inputs for the form
    // element that was passed in
    $(':input', form).each(function() {
      var type = this.type;
      var tag = this.tagName.toLowerCase(); // normalize case
      // it's ok to reset the value attr of text inputs,
      // password inputs, and textareas
      if (type == 'text' || type == 'password' || tag == 'textarea')
        this.value = "";
      // checkboxes and radios need to have their checked state cleared
      // but should *not* have their 'value' changed
      else if (type == 'checkbox' || type == 'radio')
        this.checked = false;
      // select elements need to have their 'selectedIndex' property set to -1
      // (this works for both single and multiple select elements)
      else if (tag == 'select')
        this.selectedIndex = -1;
    });
  }

  function _initDateTimePicker() {
    $('.date-box').datetimepicker({
      language: 'zh-CN',
      format: 'yyyy-mm-dd',
      weekStart: 1,
      todayBtn: 1,
      autoclose: 1,
      todayHighlight: 1,
      minView: 2,
      maxView: 3,
      forceParse: 0
    });
  }

  return {
    get: _ajax,
    post: function(options) {
      options.type = 'post';
      _ajax(options);
    },
    clearForm: _clearForm,
    enableDateTimePicker: _initDateTimePicker
  }
});