Walker w;

void setup() {
  size(640, 360);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.display();
}

//int [] randomCounts;
//int len = 20;

//void setup() {
//  size(640, 240);
//  randomCounts = new int[len];
//}

//void draw() {
//  background(255);
//  int index = int(random(len));
//  randomCounts[index]++;
  
//  stroke(0);
//  fill(127);
//  int w = width/len;
  
//  for (int x = 0; x < len; x++) {
//    rect(x*w, height - randomCounts[x], w-1, randomCounts[x]);
//  }
//}