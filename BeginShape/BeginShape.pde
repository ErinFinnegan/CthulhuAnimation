PShape s;
PShape t;

void setup() {
  size(400, 400, P2D);
  s = createShape();
  s.beginShape(TRIANGLE_STRIP);
  s.vertex(30, 75);
  s.vertex(40, 20);
  s.vertex(50, 75);
  s.vertex(60, 20);
  s.vertex(70, 75);
  s.vertex(80, 20);
  s.vertex(90, 75);
  s.endShape();

  t = createShape();
  t.beginShape(ARC);
  //arc(a, b, c, d, start, stop)
  //a  float: x-coordinate of the arc's ellipse
  //b  float: y-coordinate of the arc's ellipse
  //c  float: width of the arc's ellipse by default
  //d  float: height of the arc's ellipse by default
  //start  float: angle to start the arc, specified in radians
  //stop  float: angle to stop the arc, specified in radians
  //example:  arc(50, 50, 80, 80, 0, PI+QUARTER_PI, PIE);
  //t.arc(50, 50, 80, 80, 0, int(PI+QUARTER_PI), PIE);
  t.vertex(50, 50);
  t.vertex(80, 80);
  //  t.vertex(0, PI+QUARTER_PI);
  //  t.vertex(PIE, 0);
  //  t.endShape();
}

void draw() {
  smooth();
  //shape(s, 0, 0);
  stroke(255, 10, 10);
  shape(t, 0, 0);
}

