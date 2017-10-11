Walker w;

void setup() {
  size(640, 640);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}