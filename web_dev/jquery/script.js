$(document).ready(function() {
  var paragraph = $('body').children('p');
  // button
  var newDiv = $('<div>"This is the NEW DIV"</div>');
  paragraph.before(newDiv);
  // newDiv.text();
});