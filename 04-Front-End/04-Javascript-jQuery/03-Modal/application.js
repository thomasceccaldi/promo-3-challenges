$(function(){
  $('#image-overlay').hide();

  $('#my-image').on("click", function() {
    $('#image-overlay').show();
    $('#image-overlay').append("<div><img src='images/sloop.jpg' height='600' width='900'></div>")
   });

  $('#image-overlay').on("click", function() {
    $('#image-overlay').hide();
    $('#image-overlay').empty()
  });

})



