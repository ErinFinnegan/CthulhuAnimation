
float startAngle = 0;
float angleVel = 0.4;


void setup() {
  size(800, 800);
  smooth();
}

void draw() {
  background(255);
  stroke(0);
  strokeWeight(4);


  startAngle += 0.015;
  float angle = startAngle;

  //  Curve Syntax:  curve(x1, y1, x2, y2, x3, y3, x4, y4)
  //x1  float: coordinates for the beginning control point
  //y1  float: coordinates for the beginning control point
  //x2  float: coordinates for the first point
  //y2  float: coordinates for the first point
  //x3  float: coordinates for the second point
  //y3  float: coordinates for the second point
  //x4  float: coordinates for the ending control point
  //y4  float: coordinates for the ending control point

  for (int x = 0; x <= width; x += 24) {  //NoC example NOC_3_09
    float y = map(sin(angle), -1, 1, 0, height);
    fill(109, 24, 170);
    //ellipse(x, y, 48, 48);  //the original code
    curve(5, 26, x, y, width, height, 15, 65); 
    curve(5, 26, width, height, x, y, 15, 65); 
    angle += angleVel;
  }
}

