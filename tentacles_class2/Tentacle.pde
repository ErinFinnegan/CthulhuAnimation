
class Tentacle {

  float startAngle;

  float tailHeight;

  int startX, endX;
  int tailLength;

  Tentacle (float tempStartAngle) {
    startAngle = tempStartAngle;
    tailHeight = 300;
    tailLength = width/2;
  }

  void update() {
    noStroke();
    //  strokeWeight(1);

    startAngle += 0.5;  //controls speed of wave
    float angle = startAngle; //this will make it stop moving with a static number

    angle = 0;
    startX = mouseX;
    endX = startX + tailLength;

    for (int x = startX; x <= endX; x ++) {  //NoC example NOC_3_09

      // a is the angle of sine wave to calculate thickness of the half of tail
      float a = map(x, startX+tailLength/2, startX+tailLength, 90, 0);

      // thickness of tail (each pixel)
      float y = map(sin(radians((startAngle+a)%360)), -1, 1, 0, height/2);

      float h = tailHeight * ((x > startX+tailLength/2) ? sin(radians(a)) : 1);


      fill(109, 24, 170);
      rectMode(CENTER);
      rect(x, y, 1, h);
      angle++;

      if (angle>360)
        angle = 0;
    }
  }
}

