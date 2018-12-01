class Rect{
 
  int x;
  int y;
  float w;
  float h;
  

Rect(int tempx, int tempy, float tempw, float temph){

  x = tempx;
  y = tempy;
  w = tempw;
  h = temph;
}

void display(){
  stroke(#7E00FF);
 fill(200,50,90,50); 
 rect(x, y, w, h);
}



}
