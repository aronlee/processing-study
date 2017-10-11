import java.util.Random;

Random generator;

void setup() {
  size(200, 200);
  background(255);
  generator = new Random();
}

void draw() {
  
  float red = (float) generator.nextGaussian();
  float green = (float) generator.nextGaussian();
  float blue = (float) generator.nextGaussian();
  
  float sd = 100; float mean = 50;
  red = constrain((red * sd) + mean, 0, 255);
  sd = 20; mean = 200;
  green =  constrain((green * sd) + mean, 0, 255);
  sd = 100; mean = 0;
  blue = constrain((blue * sd) + mean, 0, 255);
  
  float xloc = (float) generator.nextGaussian();
  float yloc = (float) generator.nextGaussian();
  sd = width/10;
  mean = width/2;
  xloc = xloc * sd + mean;
  yloc = yloc * sd + mean;
  noStroke();
  fill(red, green, blue);
  ellipse(xloc, yloc, 8, 8);
  
}