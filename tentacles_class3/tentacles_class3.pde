Tentacle tentacle1;
Tentacle tentacle2;

void setup() {
  size(800, 800);
  tentacle1 = new Tentacle(0, 0, width/2, 300);
  tentacle2 = new Tentacle(0, 30, width, 200);
}

void draw() {
  background(255);
  tentacle1.update();
  tentacle2.update();
}

