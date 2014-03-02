Tentacle tentacle1;
Tentacle tentacle2;
Tentacle tentacle3;


void setup() {
  size(800, 800);
  // Tentacle Construction: (int tempstartX, float tempStartAngle, int temptaillength, int temptailHeight, color tempcolor)
//  tentacle1 = new Tentacle(0, 0, width/2, 300, #B5EF1D);
//  tentacle2 = new Tentacle(0, 30, width, 200, #3548CC);
  tentacle1 = new Tentacle(0, 0, width/2, 300, color(int(random(255)),225,int(random(255))));
  tentacle2 = new Tentacle(0, 30, width, 200, color(int(random(255)),225,int(random(255))));
  tentacle3 = new Tentacle(0, 100, width+200, 400, color(int(random(255)),225,int(random(255))));
}

void draw() {
  background(255);
  tentacle1.update();
  tentacle2.update();  
  tentacle3.update(); 
}

