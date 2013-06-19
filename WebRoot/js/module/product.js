define(function() {
  $('#J_favorite').click(function() {
    $.ajax({
      'url': 'x',
      'data': {

      },
      'type': 'post',
      'dataType': 'json'}).done(function(result) {
        alert(result);
      });
  });
});