define(['./util'], function(Util) {
  'use strict';
  var $send = $('#J_send'),
    $content = $('#J_content');
  $send.click(function() {
    Util.post({
      'url': '/u/replymsg',
      'data': {
        'id': id,
        'title': title,
        'content': $.trim($content.val())
      },
      'done': function(data) {
        if (data.toLowerCase() == 'success') {
          alert('消息回复成功');
          location.reload();
        }
      }
    });
  });
});