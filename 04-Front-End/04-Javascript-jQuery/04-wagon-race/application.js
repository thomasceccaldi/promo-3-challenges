

$(document).ready(function() {

  $( '#victory').hide();
  $(document).on('keyup',function(event) {
    if(event.keyCode == 80){
      var p = $('#player1_race .active').index();
      $('#player1_race .active').empty()
      $('#player1_race td').eq(p-1).fadeOut("slow", function() {
      $(this).html('').show();
      });
      $('#player1_race .active').append("<div><img src='img/blackcloud.png' height='15' width='25'></div>")
      $('#player1_race .active').removeClass('active');
      $('#player1_race td').eq(p+1).addClass('active');
      $('#player1_race td').eq(p+1).append("<div><img src='img/player1.png' height='25' width='40'></div>")

      if($('#player1_race .active').is('#win')){
       $('#victory').fadeIn(300).prepend('<h2><strong>Player 1 wins !!</h1>');
      }

      $('#victory').click(function() {
            location.reload();
      });

    } else if(event.keyCode == 65){
      var p = $('#player2_race .active').index();
      $('#player2_race .active').empty()
      $('#player2_race td').eq(p-1).fadeOut("slow", function() {
      $(this).html('').show();
      });
      $('#player2_race .active').append("<div><img src='img/blackcloud.png' height='15' width='25'></div>")
      $('#player2_race .active').removeClass('active');
      $('#player2_race td').eq(p+1).addClass('active');
      $('#player2_race td').eq(p+1).append("<div><img src='img/player2.png' height='25' width='40'></div>")

      if($('#player2_race .active').is('#win')){
       $('#victory').fadeIn(300).prepend('<h2><strong>Player 2 wins !!</h1>');
      }

      $('#victory').click(function() {
            location.reload();
      });
    }
  });

});