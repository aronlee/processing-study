class Walker {
  float x, y;
  int size = 10;
  
  PVector noff;

  Walker() {
    x = width/2;
    y = height/2;
    noff = new PVector(random(1000), random(1000));
  }

  void render() {
    stroke(0);
    point(x,y);
  }

  void walk() {
    float stepsizeX = map(noise(noff.x), 0, 1, -1, 1);
    float stepsizeY = map(noise(noff.y), 0, 1, -1, 1);
    
    x += stepsizeX;
    y += stepsizeY;
    
    noff.add(0.01,0.01,0);
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