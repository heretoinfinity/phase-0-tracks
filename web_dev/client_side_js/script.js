var beginning = document.getElementsByTagName("body")[0];

var welcomeMessage = document.createElement("div");
welcomeMessage.innerHTML = "Welcome to our page";
var soccerDiv = document.getElementById("soccer");
beginning.insertBefore(welcomeMessage, soccerDiv);

var soccerImg = document.getElementById('ball');
var increaseButton = document.getElementById('increase');
var decreaseButton = document.getElementById('decrease');

function increaseImgSize(event) {
  var height =  soccerImg.height + 5;
  soccerImg.style.height = height + "px";

}

function decreaseImgSize(event) {
  var height =  soccerImg.height - 5;
  soccerImg.style.height = height + "px";

}

increaseButton.addEventListener('click', increaseImgSize);
decreaseButton.addEventListener('click', decreaseImgSize);