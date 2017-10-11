import java.util.Random;
class Walker {
  
  float x;
  float y;
  Random generator = new Random();
  
  Walker() {
    x = width/2;
    y = height/2;
  }
  
  void display() {
    stroke(0);
    point(x, y);
  }
  
  //void step() {
  //  int choice = int(random(4));
  //  float distance = (float) generator.nextGaussian();
  //  int sd = 1;
  //  int mean = 1;
  //  distance = sd * distance + mean;
  //  if (choice == 0) {
  //    x += distance;
  //  } else if (choice == 1) {
  //    x -= distance;
  //  } else if (choice == 2) {
  //    y += distance;
  //  } else {
  //    y -= distance;
  //  }
  //  x = constrain(x,0,width-1);
  //  y = constrain(y,0,height-1);
  //}
  
  void step() {
    float xd = (float) generator.nextGaussian();
    float yd = (float) generator.nextGaussian();
    x += xd;
    y += yd;
    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
  }
}