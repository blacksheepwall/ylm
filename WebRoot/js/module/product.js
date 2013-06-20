define(function() {
  $('#J_favorite').click(function() {
    $.ajax({
      'url': '/u/addFavorite/',
      'data': {
        'id': 0,
        'type': 'LINE'
      },
      'type': 'post',
      'dataType': 'json'}).done(function(result) {
        alert($.toJSON(result));
      });
  });
});