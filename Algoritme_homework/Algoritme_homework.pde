int num = 200;
Rect[] rects = new Rect[num];
int[] x = new int[num];
int[] y = new int[num];
int indexPosition = 0;

int rectx = 40;
int recty = 40;
int rectw = 100;
int recth = 40;


void setup() { 
  size(600, 600);
  fill(#0081FF);
  for (int i = 0; i < num; i ++) {
    rects[i] = new Rect(rectx+i, recty+i, rectw+i, recth+i);
  }
}

void draw() {
  secondAlgo();
  //background(100, 150, 100, 150);
  /*for (int i = num - 1; i > 0; i--) {
    x[i] = x[i-1];
    y[i] = y[i-1];
  }
  if (indexPosition == num) {
    indexPosition = 0;
  }
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  for (int i = 0; i < num; i ++) {
    rects[num] = new Rect(rectx[indexPosition + i], recty[indexPosition+i], rectw+i, recth+i);
  }*/
}

void secondAlgo() {
  background(#033667);
  x[indexPosition] = mouseX;
  y[indexPosition] = mouseY;
  indexPosition = (indexPosition + 1) % num;
  for (int i = 0; i < num; i++) {
    int pos = (indexPosition + i) % num;
    rects[pos] = new Rect(x[pos], y[pos], pos*0.2, pos*0.3);
    rects[pos].display();

    println(pos);
  }
}
