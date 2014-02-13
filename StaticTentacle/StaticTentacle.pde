
float angle = 2;
float angleVel = 0.1;

//void setup() {
size(800, 800);
smooth();
//}



//void draw() {
background(255);
stroke(0);
strokeWeight(4);
fill(109, 24, 170);
beginShape();
for (int x = 0; x <= width; x += 9) {
  float y = map(sin(angle), -1, 1, 0, height);
  vertex(x, y);
  angle +=angleVel;
} 
endShape();

stroke(0);
strokeWeight(4);
fill(255, 255, 255);
beginShape();
for (int x = 0; x <= width; x += 9) {
  float y = map(cos(angle), -1, 1, 0, height);
  vertex(x, y);
  angle +=angleVel;
} 
endShape();
//
//  beginShape();
//  for (int x = 0; x <= width; x += 5) {
//    float y = map(sin(angle), -1, 1, 0, (height-20));
//    vertex(x, y);
//    angle +=angleVel;
//  } 
//  endShape();
//}

