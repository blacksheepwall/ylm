define(['./util'], function(Util) {
  $('#J_reset').click(function() {
    Util.clearForm();
    return false;
  });
});