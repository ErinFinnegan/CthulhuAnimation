Tentacle tentacle1;
Tentacle tentacle2;
color[] ArrayOfColors = { 
  color(181, 230, 29), color(63, 72, 204), color(255, 174, 201), color(0, 162, 232), color(255, 127, 39), color(255, 242, 0), color(136, 0, 21), color(212, 176, 190), color(207, 209, 100), color(200, 120, 87)
};
color rgb;

void setup() {
  size(800, 800);
  tentacle1 = new Tentacle(0, 0, width/2, 300, rgb);
  tentacle2 = new Tentacle(0, 30, width, 200, rgb);
  rgb = (ArrayOfColors[(int) random(ArrayOfColors.length)]);
  //Pick one word and one color per word at random from my arrays and then use those words in the draw loop as movers
  println("Setup RGB " + rgb);
}

void draw() {
  background(255);
  tentacle1.update();
  tentacle2.update();  
  println("draw RGB " + rgb);
}

