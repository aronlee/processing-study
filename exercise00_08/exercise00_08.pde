void setup() {
  size(640, 640);
  // background(255);
  noLoop();
}

void draw() {

  float xoff = 0.0;

  loadPixels();

  for (int x = 0; x < width; x++) {

    float yoff = 0.0;

    for (int y = 0; y < height; y++) {
      noiseDetail(10, 0.65);
      float bright = map(noise(xoff, yoff), 0, 1, 0, 255);
      pixels[x + y * width] = color(bright, bright, 255);
      yoff += 0.01;
    }

    xoff += 0.01;
  }

  updatePixels();
}