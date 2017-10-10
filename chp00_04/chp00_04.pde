import java.util.Random;

Random generator;

void setup() {
  size(640, 360);
  background(255);
  generator = new Random();
}

void draw() {
  float num = (float) generator.nextGaussian(); // nextGaussian() 返回double类型
  
  float sd = 60;
  float mean = 320;
  
  float x = sd * num + mean;
  
  //stroke(0, 0, 0, 0.3);
  noStroke();
  fill(0, 10);
  ellipse(x, height/2, 16, 16);
  
}