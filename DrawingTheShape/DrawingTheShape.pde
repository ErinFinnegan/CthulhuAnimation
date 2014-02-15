
//HScrollbar hs1, hs2;  // Two scrollbars
float cp1x, cp1y, cp2x, cp2y, ap1x, ap1y;
float vertexX, vertexY;

boolean showvalues = true;
boolean scrollbar = false;

void setup() {
  size(800, 800);
  smooth();
  setupScrollbars();

  cp1x = width/2;
  cp1y = height/2;
  cp2x = width/2;
  cp2y = height/2;
  ap1x = width/2;
  ap1y = height/2;
  
  vertexX = width/2;
  vertexY = height/2;
}

void draw() {
  background(255);
  drawScrollbars();
  stroke(0);
  strokeWeight(0);
  fill(193, 24, 255);
  beginShape();
  //bezierVertex(x2, y2, x3, y3, x4, y4)
  //x2  float: the x-coordinate of the 1st control point
  //x3  float: the x-coordinate of the 2nd control point
  //x4  float: the x-coordinate of the anchor point
  vertex(vertexX, vertexY);

  bezierVertex(cp1x, cp1y, cp2x, cp2y, ap1x, ap1y);
  bezierVertex(cp1x + 8, cp1y + 10, cp2x + 8, cp2y + 10, ap1x + 8, ap1y + 10);
  //  bezierVertex(50, 80, 60, 25, 30, 20);
  endShape();
}

void mouseReleased(){
  //vertexX = mouseX;
  //vertexY = mouseY;
}

