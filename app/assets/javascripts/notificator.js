var myMessages = ['info','warning','error','success'];

function hideAllMessages()
{
  var messagesHeights = new Array(); // this array will store height for each
  messagesHeights = $('#message').outerHeight(); // fill array
  $('#message').fadeIn(1).css('top', -messagesHeights - 10).css('left', 0); //move element outside viewport
}

function showMessage(type, title, message)
{
  hideAllMessages();
  $('#message h3').text(title);
  $('#message p').text(message);
  $('#message').addClass(type).animate({top:"0"}, 500);
  $('#message').delay(2000).fadeOut(500);
}