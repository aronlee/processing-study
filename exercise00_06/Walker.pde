class Walker {
  float x, y;

  Walker() {
    x = width/2;
    y = height/2;
  }

  void render() {
    stroke(0);
    point(x,y);
  }

  void step() {
    float stepsize = random(0, 10);
    float stepx = random(-stepsize, stepsize);
    float stepy = random(-stepsize, stepsize);
    x += stepx;
    y += stepy;
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}