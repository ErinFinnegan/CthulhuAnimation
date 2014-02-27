Tentacle tentacle1;
Tentacle tentacle2;

void setup() {
  size(800, 800);
  tentacle1 = new Tentacle(0);
  tentacle2 = new Tentacle(30);
}

void draw() {
  background(255);
  tentacle1.update();
  tentacle2.update();
}

