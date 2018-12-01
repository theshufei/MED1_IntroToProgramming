/*float r = 10; 
 float theta = 0;
 float s1 = 0;
 float e = 1;
 float t = 30;
 float c1 = 1;
 float k = 10;*/

//if global variables are in draw. they will reset over and over again. draw same 
//amount of circles in the same set position. 

void setup() {
  size(700, 600);
  background(255);

  /*for(int i = 0; i<10000; i++){
   
   float x = r * cos(theta);
   float y = r * sin(theta);
   
   s1 = s1 + 10; //seed til perlin noise
   float s2 = noise(s1) * t; //size for circles
   
   c1 = c1 + 0.002;//forskel fra hver ny farve
   float c2 = noise(c1) * 240;
   
   noStroke();
   fill(c2/6,c2,c2*255,c2);
   //fill(30,c2,c2*200);
   ellipse(x+width/2, y+height/2, s2, s2);
   theta = theta+0.04; //vinkel, fart 
   r = r+0.2; //radius
   
   }*/
}

void draw () {
  float r = 10; 
  float theta = 0;
  float s1 = 0;
  //float e = 1;
  float t = 30;
  float c1 = 1;
  float k = 10;

  for (int i = 0; i<200; i++) {

    float x = r * cos(theta);
    float y = r * sin(theta);

    s1 = s1 + k; //seed til perlin noise
    float s2 = noise(s1) * t; //size for circles

    c1 = c1 + 0.002;//forskel fra hver ny farve
    float c2 = noise(c1) * 240;

    noStroke();
    fill(c2/6, random(255), c2*255, c2);
    //fill(30,c2,c2*200);
    ellipse(x+width/2, y+height/2, s2, s2);
    theta = theta+0.4; //vinkel, fart 
    r = r+2; //radius
  }
  //noLoop();
}
