define(function() {
  'use strict';
  var selector = '#J_flow_steps';
  //  FlowStep 函数类
  function FlowStep() {
    this.init();
  }

  FlowStep.prototype = {
    init: function() {
      this.$flowSteps = $(selector);
      this.$liElems = this.$flowSteps.find('li');
    },
    // 添加制定step的完成时间
    to: _to
  };
  /**
   * 跳转至步骤index，(index:0,1,2...)
   * @param {Object} index
   * @param {Function} callback
   */
  function _to(index, callback) {
    var totalCount = this.$liElems.size(),
      index = parseInt(index, 10);
    if (!_.isNumber(index) || (index > totalCount - 1) || index < 0) {
      return;
    }
    $.each(this.$liElems, function(i, item) {
      $(item).removeClass('prv').removeClass('crt');
      if (i === index) {
        $(item).removeClass('prv').addClass('crt');
      }
      else if (i === index - 1) {
        $(item).addClass('prv');
      }
    });
    scrollTo(0, 0);
    _setIndex(index);
    $.isFunction(callback) && callback();
  }

  /**
   * 显示步骤index的内容，同时隐藏其他步骤
   * @param {Number} index
   */
  function _setIndex(index) {
    var $formBody = $('.form-body');
    $.each($formBody, function(i, item) {
      item = $(item);
      if (i !== index) {
        item.addClass('hide');
      }
      else {
        item.removeClass('hide');
      }
    });
  }

  // exports
  return new FlowStep();
});
