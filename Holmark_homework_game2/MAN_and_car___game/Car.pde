class Car { // the class is defined withing these brackets.
  color c;
  float xpos = 30;
  float ypos;
  float xspeed;
  float theSize;
  float theHeight;



  Car(color tempC, float tempXpos, float tempYpos, float tempXspeed) { //the constructor!!
    c = tempC;
    xpos = tempXpos;
    ypos = tempYpos;
    xspeed = tempXspeed;
    theSize = 40;
    theHeight = 10;
  }

  void displayCar () {//function
    float offset = theSize/4; //local variable
    rectMode(CENTER);
    fill(c);
    rect(xpos, ypos, theSize, theHeight);

    rect(xpos - offset, ypos - offset, offset, offset/3);
    rect(xpos + offset, ypos - offset, offset, offset/3);
    rect(xpos - offset, ypos + offset, offset, offset/3);
    rect(xpos + offset, ypos + offset, offset, offset/3);
  }

  void moveCar() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}
