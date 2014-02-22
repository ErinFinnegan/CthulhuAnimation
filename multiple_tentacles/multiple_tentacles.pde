
float startAngle = 0;
float angleVel = 0.1;

float tailHeight =300;

int startX, endX;
int tailLength;
int xspacing = 5;   

int angle;
tentacle tentacle1 = new tentacle(0.5, );

void setup() {
  size(800, 800);
  smooth();

  rectMode(CENTER);
  tailLength = width/2;

  angle = 0;
  
}

void draw() {
  background(255);
  tailLength = mouseX;
  tentacle1.update;
}

class tentacle {
  
  tentacle (float tempstartAngle, int tempangle, int tempstartX, int tempendX;) {

// float tempstartAngle;
//  int tempangle, tempstartX, tempendX;    
   tempstartAngle += startAngle;
//  startAngle += 0.5;  //controls speed of wave
//  float angle = startAngle; //this will make it stop moving with a static number
    tempangle = = startAngle;
//  angle = 0;
//  startX = 2;
//  endX = startX + tailLength;
  }

  void update() {
    for (int x = startX; x <= endX; x ++) {  //NoC example NOC_3_09

      // a is the angle of sine wave to calculate thickness of the half of tail
      float a = map(x, startX+tailLength/2, startX+tailLength, 90, 0);

      // thickness of tail (each pixel)
      float y = map(sin(radians((startAngle+a)%360)), -1, 1, 0, height/2);
      // println("xspacing = " + xspacing + " x = " + x + " (x*xspacing) " + (x*xspacing) ); 
      float h = tailHeight * ((x > startX+tailLength/2) ? sin(radians(a)) : 1);
      noStroke();
      fill(109, 24, 170);  //purple color
      rect(x, y, 1, h);

      angle++;
      if (angle>360)
        angle = 0;
    }
  }
}

