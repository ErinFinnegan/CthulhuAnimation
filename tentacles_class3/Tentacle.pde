
class Tentacle {

  float startAngle;
  float tailHeight;
  int startX, endX;
  int tailLength;
  color rgb;

  Tentacle (int tempstartX, float tempStartAngle, int temptaillength, int temptailHeight, color tempcolor) {
    startX = tempstartX;
    startAngle = tempStartAngle;
    tailHeight = temptailHeight;
    tailLength = temptaillength;
    rgb = tempcolor;
  }

  void update() {
    noStroke();

    startAngle += 0.5;  //controls speed of wave
    float angle = startAngle; //this will make it stop moving with a static number

    angle = 0;
    endX = startX + tailLength;

    for (int x = startX; x <= endX; x ++) {  //NoC example NOC_3_09

      float a = map(x, startX+tailLength/2, startX+tailLength, 90, 0);
      float y = map(sin(radians((startAngle+a)%360)), -1, 1, 0, height/2);

      float h = tailHeight * ((x > startX+tailLength/2) ? sin(radians(a)) : 1);
      fill(rgb);
      rectMode(CENTER);
      rect(x, y, 1, h);
      angle++;

      if (angle>360)
        angle = 0;
    }
  }
}

