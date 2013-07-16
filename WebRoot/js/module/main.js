define(['marquee'], function() {
  'use strict';
  var $newsList = $('#J_news_list');
  $newsList.marquee({
    auto: true,
    interval: 5000,
    type: 'vertical'
  });
});