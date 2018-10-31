int num = 10;
PImage cake;
int cakeX = 710;
int cakeY = 510;
int cakeW = 80;
int cakeH = 80;
int rectX = 750;
int rectY = 550;
int rectW = 95;
int rectH = 95;
int carStartX = 50;
int carStartY= 80;
int carMoveX = 50;
int carMoveY = 50;

boolean loss = false;

import processing.sound.*;

SoundFile bach;

Car[] cars = new Car[num];
MAN walk;


void setup() {
  size(800, 600);
  bach = new SoundFile(this, "Bach.mp3");
  bach.play();

  for (int i = 1; i < cars.length; i++) {
    cars[i] = new Car(color(i*2, 90, 150), carStartX+(i*carMoveX), carStartY+(i*carMoveY), random(0.2, 6));
  }

  cake = loadImage("Cake.png");
  walk = new MAN();
  walk.colorChange();
}


void draw() {
  background(#FF9595);//red
  walk.colorChange();


  for (int i = 1; i < cars.length; i++) {
    cars[i].moveCar();
    cars[i].displayCar();

    if (dist(walk.x, walk.y, cars[i].xpos, cars[i].ypos) <= (walk.w/2) + (cars[i].theSize/2)) {
      loss = true;
    }

    if (loss == true) {
      cars[i].xspeed = 0;
      walk.x = 20;
      walk.y = 20;
      bach.stop();
    }
    if ((walk.x > rectX) && (walk.y > rectY)) {
      cars[i].xspeed = 0;
    }
  }


  walk.displayMan();
  walk.moveMan();
  walk.win();


  //corner for victory!
  stroke(#030303);
  fill(255);
  rect(rectX, rectY, rectW, rectH);
  image(cake, cakeX, cakeY, cakeW, cakeH);//cake displayed on top of rect


  walk.displayMan(); //man displayed on top of everything
}
