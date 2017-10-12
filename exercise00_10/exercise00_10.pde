Landscape land;

float theta = 0.0;

void settings() {
  size(1000,1000,P3D);
  // fullScreen(P3D);
}

void setup() {
  land = new Landscape(20,1000,1000);
}

void draw() {

  // Ok, visualize the landscape space
  background(255);
  pushMatrix();
  translate(width / 2, height / 2 + 20, -160);
  rotateX(PI / 3);
  rotateZ(theta);
  land.render(); 
  popMatrix();

  land.calculate();
  
  theta += 0.0025;
}