size(800, 800);

beginShape();
vertex(30, 20);
//bezierVertex(x2, y2, x3, y3, x4, y4)
//x2  float: the x-coordinate of the 1st control point
//x3  float: the x-coordinate of the 2nd control point
//x4  float: the x-coordinate of the anchor point

bezierVertex(80, 0, 80, 75, 30, 75);
bezierVertex(50, 80, 60, 25, 30, 20);
endShape();
