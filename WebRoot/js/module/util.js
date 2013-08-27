define(['dateTimePicker'], function() {
  'use strict';
  var mod = {},
    noop = $.noop(),
    $startDate = $('#J_start_date'), // id必须为J_start_date
    $endDate = $('#J_end_date');  //  id必须为J_end_date
  function _ajax(options) {
    var type = options.type || 'get',
      url = options.url,
      _options = {
        'type': type,
        'url': url,
        'data': options.data,
        'dataType': 'json',
        'beforeSend': options.beforeSend
      };
    options.singleton && mod[url] && mod[url].abort();
    mod[url] = $.ajax(_options).done(function(result) {
      if (result && result.status == 0) {
        var done = options.done || noop;
        done(result.data);
      } else {
        alert(result.desc || '');
      }
    }).fail(function(result) {
        console && console.log(JSON.stringify(result));
      }).always(function() {
        $.globalMessenger().hideAll();
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

  function _validDateTimePicker() {
    var start = +new Date($startDate.val()),
      end = +new Date($endDate.val()),
      result = false;
    if (_.isNaN(start) && _.isNaN(end)) {
      result = true;
    } else {
      if (!_.isNaN(start) && !_.isNaN(end)) {
        if (start >= end) {
          alert('开始日期不能晚于结束日期');
        } else {
          result = true;
        }
      } else {
        alert('起止日期填写不完整');
      }
    }
    return result;
  }

  function _getPaperType(type) {
    return {
      '1': '身份证',
      '2': '护照',
      '3': '港澳通行证',
      '4': '台湾通行证'
    }[type];
  }

  return {
    get: _ajax,
    post: function(options) {
      options.type = 'post';
      $.globalMessenger().post({
        message: '数据加载中...',
        showCloseButton: true,
        auto: false
      });
      _ajax(options);
    },
    clearForm: _clearForm,
    enableDateTimePicker: _initDateTimePicker,
    validDateTimePicker: _validDateTimePicker,
    paperType: _getPaperType
  }
});