class Walker {
  
  float x;
  float y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x, y);
  }
  
  void step() {
    float r = random(1);
    if (r < 0.2) {
      int dirx = int(mouseX - x);
      int diry = int(mouseY - y);
      if (dirx != 0) {
        dirx /= abs(dirx);
        //dirx /= x;
      }
      if (diry != 0) {
        diry /= abs(diry);
        //diry /= y;
      }
      x += dirx;
      y += diry;
    } else {
      int stepx = int(random(-2, 2));
      int stepy = int(random(-2, 2));
      x += stepx;
      y += stepy;
    }
    
    x = constrain(x, 0, width - 1);
    y = constrain(y, 0, height - 1);
  }
}