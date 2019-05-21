var lines, markov, data1, data2, x = 160, y = 240;

function preload() {

  data1 = loadStrings('lemetamorfosi.txt');
  
}

function setup() {

  createCanvas(500, 500);
  textFont('Georgia', 16);
  textAlign(LEFT);

  lines = ["click to (re)generate!"];

  // create a markov model w' n=4
  markov = new RiMarkov(4);

  // load text into the model
  markov.loadText(data1.join(' '));
 

  drawText();
}

function drawText() {

  background(250);
  text(lines.join(' '), x, y, 400, 400);
}

function mouseClicked() {

  x = y = 50;
  lines = markov.generateSentences(10);
  drawText();
}
