
void setup() {
size(800, 800);
smooth();
}

void draw() {
background(255);
stroke(0);
strokeWeight(4);
fill(109, 24, 170);
//curve(5, 26, 5, 26, 73, 24, 73, 61);


//  Curve Syntax:  curve(x1, y1, x2, y2, x3, y3, x4, y4)
//x1  float: coordinates for the beginning control point
//y1  float: coordinates for the beginning control point
//x2  float: coordinates for the first point
//y2  float: coordinates for the first point
//x3  float: coordinates for the second point
//y3  float: coordinates for the second point
//x4  float: coordinates for the ending control point
//y4  float: coordinates for the ending control point

curve(5, 26, 73, 24, 73, 61, 15, 65); 
curve(73, 24, 73, 61, 15, 65, 15, 65);
}
