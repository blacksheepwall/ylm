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

  return {
    get: _ajax,
    post: function(options) {
      options.type = 'post';
      _ajax(options);
    }
  }
});