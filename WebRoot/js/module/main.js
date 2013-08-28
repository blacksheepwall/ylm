define(['marquee'], function() {
  'use strict';
  var $newsList = $('#J_news_list'),
    $searchForm = $('#J_search_form'),
    $searchTxt = $('#J_search_txt'),
    $searchBtn = $('#J_search_btn'),
    $leaveCity = $('#J_leave_city');
  $newsList.marquee({
    auto: true,
    interval: 5000,
    type: 'vertical'
  });
  $searchForm.submit(function() {
    $searchBtn.click();
    return false;
  });
  $searchBtn.click(function() {
    location.href = '/product/searchResult?value=' + encodeURI($.trim($searchTxt.val())) + '&leaveCity=' + $leaveCity.val();
  });
});