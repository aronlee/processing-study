Walker w;

void setup() {
  size(640, 640);
  background(255);
  frameRate(30);

  // Create a walker object
  w = new Walker();
}

void draw() {
  // Run the walker object
  fill(255, 10);
  noStroke();
  rect(0,0,width,height);
  w.walk();
  w.display();
}