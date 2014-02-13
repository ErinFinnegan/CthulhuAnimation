
var angle = 2;
var angleVel = 0.1;

function setup() {
  createGraphics(800, 800);
//smooth();
   noLoop();

};



function draw() {
  println("Starting: " + frameCount);
  background(255);
  stroke(0);
  strokeWeight(4);
  fill(109, 24, 170);
  beginShape();
  for (var x = 0; x <= width; x += 9) {
    var y = map(sin(angle), -1, 1, 0, height);
    vertex(x, y);
    angle +=angleVel;
  } 
  endShape();

  stroke(0);
  strokeWeight(4);
  fill(255, 255, 255);
  beginShape();
  for (var x = 0; x <= width; x += 9) {
    var y = map(cos(angle), -1, 1, 0, height);
    vertex(x, y);
    angle +=angleVel;
  } 
  endShape();



   beginShape();
   for (var x = 0; x <= width; x += 5) {
     var y = map(sin(angle), -1, 1, 0, (height-20));
     vertex(x, y);
     angle +=angleVel;
   } 
   endShape();

};
