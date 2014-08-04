$('#message-wrapper > #message').hide();

$('body').ready(function() {
  $('#message-wrapper > #message').slideDown(600)
});


$('#message-wrapper > #message').click(function() {
  $('#message-wrapper > #message').slideUp(600)
});