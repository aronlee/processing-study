class Landscape {
  
  int scl; // 每个地形模块的宽度，高度
  int w, h; // 地形总的宽度，高度
  int rows, cols; //  地形的行数和列数
  float zoff = 0.0;  
  float[][] z;   // 存放高度值的数组
  
  Landscape(int scl_, int w_, int h_) {
    scl = scl_;
    w = w_;
    h = h_;
    rows = w_ / scl_;
    cols = h_ / scl_;
    z = new float[cols][rows];
  }

  // 计算高度值
  void calculate() {
    float xoff = 0;
    for (int i = 0; i < cols; i++) {
      float yoff = 0;
      for (int j = 0; j < rows; j++) {
        z[i][j] = map(noise(xoff, yoff, zoff), 0, 1, -120, 120);
        yoff += 0.1;
      }
      xoff += 0.1;
    }
    zoff += 0.01;
  }

  // 渲染地形图
  void render() {
    for (int x = 0; x < z.length - 1; x++) {
      beginShape(QUAD_STRIP);
      for (int y = 0; y < z[x].length; y++) {
        stroke(0);
        // noStroke();
        float currentElevation = z[x][y];
        float currentShade = map(currentElevation, -120, 120, 0, 210);
        // fill(255, 255, currentShade);
        fill(currentShade, currentShade, 255);
        float xCoordinate = x * scl - w / 2;
        float yCoordinate = y * scl - h / 2;
        vertex(xCoordinate, yCoordinate, z[x][y]);
        vertex(xCoordinate + scl, yCoordinate, z[ x + 1 ][y]);
      }
      endShape();
    }
  }

}