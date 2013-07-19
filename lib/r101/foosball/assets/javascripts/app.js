$(document).ready(function() {

  $('.player').click(function(e) {
    e.preventDefault();
    var player_id = $(this).data('id');

    $.ajax({
      url: '/players/' + player_id,
      type: 'PUT',
      success: function(data) {
        document.location.href = '/rank';
      },
      error: function(data) {
        alert('fail');
      }
    });

  });

});
