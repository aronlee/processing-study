class Walker {
  float x, y;
  int size = 10;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(0);
    point(x,y);
  }

  void step() {
    float stepsize = montecarlo();
    
    float stepx = random(-stepsize, stepsize);
    float stepy = random(-stepsize, stepsize);
    x += stepx;
    y += stepy;
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
  
  float montecarlo() {
    while(true) {
      float r1 = random(size);
      float probability = (r1 * r1);
      float r2 = random(sq(size));
      if (r2 < probability) {
        return r1;
      }
    }
  }
}