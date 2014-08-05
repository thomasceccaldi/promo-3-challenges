

$(document).ready(function() {
  $(document).on('keyup',function(event) {
    if(event.keyCode == 80){
      var p = $('#player1_race .active').index();
      $('#player1_race .active').empty()
      $('#player1_race td').eq(p-3).empty()
      $('#player1_race .active').append("<div><img src='img/blackcloud.png' height='25' width='25'></div>")
      $('#player1_race .active').removeClass('active');
      $('#player1_race td').eq(p+1).addClass('active');
      $('#player1_race td').eq(p+1).append("<div><img src='img/player1.png' height='25' width='40'></div>")
    } else if(event.keyCode == 65){
      var p = $('#player2_race .active').index();
      $('#player2_race .active').empty()
      $('#player2_race td').eq(p-3).empty()
      $('#player2_race .active').append("<div><img src='img/blackcloud.png' height='25' width='25'></div>")
      $('#player2_race .active').removeClass('active');
      $('#player2_race td').eq(p+1).addClass('active');
      $('#player2_race td').eq(p+1).append("<div><img src='img/player2.png' height='25' width='40'></div>")
    }
  });



});